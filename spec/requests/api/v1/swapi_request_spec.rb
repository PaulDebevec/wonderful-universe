require 'rails_helper'

RSpec.describe 'Star Wars API Endpoints' do
  it 'Returns all people', :vcr do

    get '/api/v1/swapi/people'

    expect(response).to be_successful
    expect(response.status).to eq(200)
    json = JSON.parse(response.body, symbolize_names: true)
  end
end
