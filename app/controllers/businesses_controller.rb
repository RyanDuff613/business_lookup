class BusinessesController < ApplicationController

  def index
    @businesses = Business.all 
    json_response(@businesses)
  end

  def show
    @business = Business.find(params[:id])
    json_response(@business)
  end

  def create
    @business = Business.create!(business_params)
    json_response(@business, :created)
  end

  def update
    @business = Business.find(params[:id])
    if @business.update!(business_params)
      render status: 200, json: {
        message: "#{@business.name} was succesfully updated"
      }
    end
  end

  def destroy
    @business = Business.find(params[:id])
    if @business.destroy
      render status: 200, json: {
        message: "#{@business.name} has been deleted from the database"
      }
    end
  end

  private
  def business_params
    params.permit(:name, :business_type, :phone, :address, :website)
  end

end