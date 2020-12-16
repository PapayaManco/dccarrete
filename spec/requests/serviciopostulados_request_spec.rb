require 'rails_helper'

RSpec.describe 'Serviciopostulados', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/serviciopostulados/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/serviciopostulados/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http success' do
      get '/serviciopostulados/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /edit' do
    it 'returns http success' do
      get '/serviciopostulados/edit'
      expect(response).to have_http_status(:success)
    end
  end
end
