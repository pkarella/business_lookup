require 'rails_helper'

describe "get all lists route", :type => :request do
  let!(:lists) { FactoryGirl.create_list(:list, 20)}

  before { get '/lists'}

  it 'returns all lists' do
    expect(JSON.parse(response.body).size).to eq(20)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
