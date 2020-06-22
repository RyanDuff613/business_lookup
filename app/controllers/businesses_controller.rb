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
    if params[:name] || params[:business_type] || params[:phone] || params[:address] || params[:website]
      if @business.update!(business_params)
        render status: 200, json: {
          message: "#{@business.name} was succesfully updated"
        }
      end
    else 
      render status: 400, json: {
        message: "Your request did not include any data to update. Try again."
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

  def search
      @businesses = Business.search(params)
      json_response(@businesses)
  end


  private
  def business_params
    params.permit(:name, :business_type, :phone, :address, :website)
  end

  

end