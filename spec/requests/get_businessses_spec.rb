require 'rails_helper'

describe "get all businesses route", :type => :request do
  let!(:businesses) {FactoryBot.create_list(:business, 10)}
  before {get '/businesses'}
  # before do get '/businesses'
  #   post '/businesses', params: {:name => "hotlips", :business_type => 'pizza', :phone => '555.555.5555', :address => '2121 SE Hawthorne blvd', :website => "http://www.hotlipspizza.com"}
  #   post '/businesses', params: {:name => "hotlips", :business_type => 'pizza', :phone => '555.555.5555', :address => '2121 SE Hawthorne blvd', :website => "http://www.hotlipspizza.com"}
  #   get '/businesses'
  # end

  it 'returns all businesses' do
    expect(JSON.parse(response.body).size).to(eq(10))
  end

  it 'returns status code 200' do
    expect(response).to(have_http_status(:success))
  end
end

describe "error handling on get all businesses route", :type => :request do
  
  before {get '/businesses/10'}

  it 'returns an error message if user makes get request for a business that has no record in database ' do
    expect(JSON.parse(response.body)).to(eq({"message"=>"Couldn't find Business with 'id'=10"}))
  end

  it 'returns status code 404 not found' do
    expect(response).to(have_http_status(:not_found))
  end
end