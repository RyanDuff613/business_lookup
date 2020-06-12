class Business < ApplicationRecord
validates_presence_of :name, :business_type, :phone, :address, :website
scope :search_name, -> (name) {where(name: name)}

  def self.search(search_term)
    search_name(search_term)
  end

end