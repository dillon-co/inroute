class ServiceRequestsController < ApplicationController
  skip_before_filter  :verify_authenticity_token
  def new
    @new_request = ServiceRequest.new
  end

  def create_request
    puts "\n\n\nparams:\n#{params}\n\n\n"
    request_hash = params["request_hash"].as_json
    request = ServiceRequest.create(request_hash)
    respond_to do |format|
      format.json {render nothing: true}
    end
  end
end
