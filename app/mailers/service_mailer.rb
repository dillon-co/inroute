class ServiceMailer < ApplicationMailer
  default from: 'dilloncortez@gmail.com'

  def service_request_email(request)
    @request = request
    mail(to: 'cortezdill42@gmail.com', subject: "RoadSide Service Needed!" ).deliver
  end
end
