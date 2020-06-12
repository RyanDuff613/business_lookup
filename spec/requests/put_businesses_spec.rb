require 'rails_helper'

describe "post a business route", :type => :request do
  before do
    post '/businesses', params: {:name => 'Hotlips Pizza', :business_type => 'Restaurant', :phone => '503 234 9999', :address => '2211 SE Hawthorne Blvd, Portland OR, 97214', :website => 'https://www.hotlipspizza.com/'}
    @business_id = JSON.parse(response.body)['id']
    put "/businesses/#{@business_id}", params: {:name => 'Dominos Pizza'}
  end

  it "returns a success message business record is updated" do
  end

  it "changes an attribute on a business record" do
    get "/businesses/#{@business_id}"
    expect(JSON.parse(response.body)['name']).to(eq('Dominos Pizza'))
  end

  it 'returns status 200 ok when update is succesfull' do
    expect(response).to have_http_status(:ok)
  end
end