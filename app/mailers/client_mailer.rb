class ClientMailer < ApplicationMailer
  default from: 'info@cambodianfamilies.com'

  def exited_notification(client, emails)
    @client         = client
    @manager_emails = emails
    mail(to: @manager_emails, subject: 'Client has exited from NGO')
  end
end
