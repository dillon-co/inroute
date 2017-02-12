# == Schema Information
#
# Table name: service_requests
#
#  id           :integer          not null, primary key
#  name         :string
#  phone_number :string
#  car_features :text
#  latitude     :string
#  longitude    :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class ServiceRequest < ApplicationRecord

  after_create :send_request_email

  def send_request_email
    ServiceMailer.service_request_email(self)
  end
end
