class Business < ApplicationRecord
validates_presence_of :name, :business_type, :phone, :address, :website

end