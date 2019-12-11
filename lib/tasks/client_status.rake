namespace :client_status do
  desc "Update clients status who exited from ngo but status not 'Exited'"
  task correct: :environment do
    ngo_client_ids_hash = Hash.new{|hash, key| hash[key] = Array.new }
    Organization.pluck(:short_name).each do |short_name|
      next if short_name == 'share'
      Organization.switch_to short_name
      exit_ngo_date = "SELECT created_at FROM exit_ngos WHERE exit_ngos.client_id = clients.id ORDER BY created_at DESC LIMIT 1"
      enter_ngo_date = "SELECT created_at FROM enter_ngos WHERE enter_ngos.client_id = clients.id ORDER BY created_at DESC LIMIT 1"
      exited_clients = Client.joins(:exit_ngos, :enter_ngos).where("((#{exit_ngo_date}) > (#{enter_ngo_date})) AND clients.status IN (?)", ['Accepted', 'Active', 'Referred']).order(:id).distinct
      # exit_ngo_date = "SELECT exit_date FROM exit_ngos WHERE exit_ngos.client_id = clients.id ORDER BY created_at DESC LIMIT 1"
      # enter_ngo_date = "SELECT accepted_date FROM enter_ngos WHERE enter_ngos.client_id = clients.id ORDER BY created_at DESC LIMIT 1"
      # exited_clients = Client.joins(:exit_ngos, :enter_ngos).where("(exit_ngos.exit_date > enter_ngos.accepted_date AND exit_ngos.created_at > enter_ngos.accepted_date) AND clients.status IN (?)", ['Accepted', 'Active', 'Referred']).order(:id)

      exited_clients.each do |client|
        cps_enrollments = client.client_enrollments
        cps_leave_programs = LeaveProgram.joins(:client_enrollment).where("client_enrollments.client_id = ?", client.id)
        created_at_dates = cps_enrollments.map(&:created_at) + cps_leave_programs.map(&:created_at) + client.enter_ngos.map(&:created_at)
        enrollment_date_error = false
        last_enter_ngo_date = client.enter_ngos.first.try(:created_at)
        if last_enter_ngo_date && cps_enrollments.present? && cps_leave_programs.present?
          last_exit_ngo_date = client.exit_ngos.where('created_at > DATE(?)', last_enter_ngo_date.to_s).first.try(:created_at)
          first_enroll_program_before_exit_ngo_date = cps_enrollments.where('created_at > DATE(?)', last_exit_ngo_date.to_s).first
          enrollment_date_error = (last_exit_ngo_date > last_enter_ngo_date) && ((last_exit_ngo_date < first_enroll_program_before_exit_ngo_date.created_at) || (last_exit_ngo_date < cps_leave_programs.last.created_at)) if first_enroll_program_before_exit_ngo_date.present?
          if enrollment_date_error && first_enroll_program_before_exit_ngo_date
            client.enter_ngos.create(created_at: first_enroll_program_before_exit_ngo_date.created_at - 15.minutes, accepted_date: first_enroll_program_before_exit_ngo_date.enrollment_date)
          end
        end
        client.reload
        if (client.exit_ngos.count != client.enter_ngos.count && cps_enrollments.present?) || cps_enrollments.count != cps_enrollments.count
          last_exits = client.exit_ngos.where('created_at > DATE(?)', last_enter_ngo_date.to_s)
          if last_exits.count > 1
            last_exits.last.destroy
            puts "Destroy duplicated exit_ngos"
          else
            if created_at_dates.all?{|the_date| last_exits.last.created_at > the_date }
              client.status = 'Exited'
              client.save!(validate: false)
              puts "#{short_name}: changed status client #{client.slug} done!!!"
            end
            ngo_client_ids_hash[short_name] << client.slug
          end
        else
          client.status = 'Exited'
          client.save!(validate: false)
          puts "#{short_name}: changed status client #{client.slug} done!!!"
        end
      end

      client_ids = Client.joins(:exit_ngos, :enter_ngos).where("((#{exit_ngo_date}) > (#{enter_ngo_date})) AND clients.status = ?", 'Exited').order(:id).distinct.ids
      Client.joins(:case_worker_clients).where(id: client_ids).group('clients.id').having("COUNT(case_worker_clients) > 0").distinct.each do |client|
        client.case_worker_clients.destroy_all
        puts "#{short_name}: removed caseworker from client #{client.slug} done!!!"
      end


      Client.joins(:exit_ngos, :case_worker_clients).where("clients.status = ? AND (SELECT COUNT(case_worker_clients.*) FROM case_worker_clients) > 0", 'Exited').where.not(id: client_ids).order(:id).distinct.each do |client|
        next if client.client_enrollments.present?
        client.case_worker_clients.destroy_all
        puts "#{short_name}: removed caseworker from client client #{client.slug} done!!!"
      end

      Client.joins(client_enrollments: :leave_program).distinct.where("clients.status = ? AND (SELECT COUNT(*) FROM client_enrollments WHERE client_enrollments.status = ? AND client_enrollments.client_id = clients.id) = 0", 'Active', 'Active').each do |client|
        cps_enrollment = client.client_enrollments.last
        cps_leave_program = LeaveProgram.joins(:client_enrollment).where("client_enrollments.client_id = ?", client.id).last
        if (cps_enrollment && cps_leave_program)
          if cps_leave_program.created_at > cps_enrollment.created_at && client.exit_ngos.blank?
            client.status = 'Accepted'
            client.save!(validate: false)

            puts "#{short_name}: changed status client #{client.slug} done!!!"
          end
        end
      end

      # Client.joins(:client_enrollments).where("clients.status != 'Active' AND (SELECT COUNT(*) FROM client_enrollments WHERE client_enrollments.client_id = clients.id AND status = 'Active' GROUP BY client_enrollments.created_at ORDER BY created_at DESC LIMIT 1) = 1").distinct.each do |client|qg
      # end
    end
    puts ngo_client_ids_hash
  end
end
