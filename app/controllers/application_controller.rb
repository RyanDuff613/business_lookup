class ApplicationController < ActionController::API
  include Response
  use Rack::Throttle::Daily, :max => 1000
  use Rack::Throttle::Hourly, :max => 300
  use Rack::Throttle::Minute, :max => 20

  rescue_from ActiveRecord::RecordNotFound do |exception|
    json_response({ message: exception.message }, :not_found)
  end

  rescue_from ActiveRecord::RecordInvalid do |exception|
    json_response({ message: exception.message }, :unprocessable_entity)
  end

  # def routing_error(status = :not_acceptable)
  #   message = "RoutingError: All POST requests must be made at root/businesses/"
  #   render json: message, status: status
  # end

end
