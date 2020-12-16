require 'rails_helper'

RSpec.describe 'Interes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/interes/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/interes/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/interes/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/interes/edit'
      expect(response).to have_http_status(:success)
    end
  end
end
