require 'rails_helper'

describe "post a business route", :type => :request do
  before do
    post '/businesses', params: {:name => 'Hotlips Pizza', :business_type => 'Restaurant', :phone => '503 234 9999', :address => '2211 SE Hawthorne Blvd, Portland OR, 97214', :website => 'https://www.hotlipspizza.com/'}
  end

  it "returns the business name" do
    expect(JSON.parse(response.body)['name']).to(eq('Hotlips Pizza'))
  end

  it "returns a created status" do
    expect(response).to have_http_status(:created)
  end
end

describe "post a business route error", :type => :request do
  before do
    post '/businesses', params: {:name => nil, :business_type => 'Restaurant', :phone => '503 234 9999', :address => '2211 SE Hawthorne Blvd, Portland OR, 97214', :website => 'https://www.hotlipspizza.com/'}
  end

  it "returns an error message" do
    expect(JSON.parse(response.body)).to(eq({"message"=>"Validation failed: Name can't be blank"}))
  end

  it "returns a created status" do
    expect(response).to have_http_status(:unprocessable_entity)
  end
end