# Preview all emails at http://localhost:3000/rails/mailers/service_mailer
class ServiceMailerPreview < ActionMailer::Preview
  def service_mail_preview
    ServiceMailer.service_request_email(ServiceRequest.last)
  end
end
