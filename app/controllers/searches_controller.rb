# class SearchesController < ApplicationController
#   def search
#     if params[:name]
#       @businesses = Business.search(params[:name])
#       json_response(@businesses)
#     elsif params[:business_type]
#       @businesses = Business.search(params[:business_type])
#       json_response(@businesses)
#     end
#   end
# end