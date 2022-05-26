require 'rails_helper'

RSpec.describe "UrlShortens", type: :request do
  
  describe 'GET /stats' do
    it 'returns http success' do
      get '/stats'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /redirect_to' do
    it 'returns http success' do
      get '/redirect_to', params: { :id=>5 }
      expect(response).to have_http_status(:success)
    end
  end
end
