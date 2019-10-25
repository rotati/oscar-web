namespace :program_stream_service do
  desc "Create Program Stream Services"
  task :create, [:tenant_name] => :environment do
    sheet_name = 'Sheet1'
    data       = ImportStaticService::DateService.new(sheet_name, args.tenant_name, Rails.root.join('spec/supports/services.xlsx'))
    data.import
  end
end
