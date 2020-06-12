require 'rails_helper'

describe "delete businesses route", :type => :request do
  before do
    post '/businesses', params: {:name => 'Hotlips Pizza', :business_type => 'Restaurant', :phone => '503 234 9999', :address => '2211 SE Hawthorne Blvd, Portland OR, 97214', :website => 'https://www.hotlipspizza.com/'}
    @business_id = JSON.parse(response.body)['id']
    delete "/businesses/#{@business_id}"
  end

  it 'returns a message when business is succefully deleted from database' do
    expect(JSON.parse(response.body)).to(include("message"))
  end

  it 'deletes a business from the database' do
    get "/businesses/#{@business_id}"
    expect(JSON.parse(response.body)).to(include("message"))
  end

  it 'returns status 200 ok when delete is successfull' do
    expect(response).to have_http_status(:ok)
  end

end

describe "delete business route errors" do
  before do
    delete "/businesses/1"
  end

  it "returns error message when user attempts to delete a record that does not exist" do
    # binding.pry
    expect(JSON.parse(response.body)["message"]).to(include("Couldn't find"))
  end

  it "returns status 404:NotFound when user attempts to delete a record that does not exist" do
    expect(response).to(have_http_status(:not_found))
  end

end