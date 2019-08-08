require 'rails_helper'

RSpec.describe Api::V0::PingsController, type: :request do
  describe 'GET /v0/pings' do
    it 'should return Pong' do
      get '/api/v0/pings'

      response_json = JSON.parse(response.body)
      expect(response.status).to eq 200
      expect(response_json['message']).to eq 'Pong'

    end
  end

end