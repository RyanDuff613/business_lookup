class BusinessesController < ApplicationController

  def index

  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end

end