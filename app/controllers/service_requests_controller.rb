class ServiceRequestsController < ApplicationController
  def new
    @new_request = ServiceRequest.new
  end

  def create_request
    request_hash = params["request_hash"].as_json
    request = ServiceRequest.create(request_hash)
    respond_to do |format|
      format.json {render nothing: true}
    end
  end
end
