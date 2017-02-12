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

require 'test_helper'

class ServiceRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
