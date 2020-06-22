class Business < ApplicationRecord
validates_presence_of :name, :business_type, :phone, :address, :website
scope :search_name, -> (name) {where(name: name)}
scope :search_business_type, -> (business_type) {where(business_type: business_type)}

  def self.search(params)
    if params[:name]
      search_name(params[:name])
    elsif params[:business_type]
      search_business_type(params[:business_type])
    end
  end

end
