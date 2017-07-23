require 'rails_helper'

describe "post a list route", :type => :request do

  before do
    post '/lists', params: { :name => 'cooldog', :address => 'youknow', :description => 'beautiful' }
  end

  it 'returns the name of the business' do
    expect(JSON.parse(response.body)['name']).to eq('cooldog')
  end

  it 'returns the address' do
    expect(JSON.parse(response.body)['address']).to eq('youknow')
  end

  it 'returns the description' do
    expect(JSON.parse(response.body)['description']).to eq('beautiful')
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:created)
  end

  it 'will not save if name is empty' do
  post '/lists', params: { :name => '', :address => 'youknow', :description => 'beautiful' }
      expect(response).to have_http_status(:unprocessable_entity)
  end

  it 'will not save if address is empty' do
  post '/lists', params: { :name => 'cooldog', :address => '', :description => 'beautiful' }
      expect(response).to have_http_status(:unprocessable_entity)
  end

  it 'will not save if description is empty' do
  post '/lists', params: { :name => 'cooldog', :address => 'youknow', :description => '' }
      expect(response).to have_http_status(:unprocessable_entity)
  end

end
