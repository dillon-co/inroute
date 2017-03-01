class ServiceMailer < ApplicationMailer
  default from: 'admin@helpsinroute.com'

  def service_request_email(request)
    @request = request
    mail(to: 'hello@helpinroute.com', subject: "RoadSide Service Needed!")
  end
end
