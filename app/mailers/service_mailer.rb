class ServiceMailer < ApplicationMailer
  default from: 'dilloncortez@gmail.com'

  def service_request_email(request)
    @request = request
    response = mail(to: 'hello@helpinroute.com', subject: "RoadSide Service Needed!")
    response.deliver
  end
end
