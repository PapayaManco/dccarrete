require 'rails_helper'

RSpec.describe 'Carretes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/carretes/index'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /new' do
    it 'returns http success' do
      get '/carretes/new'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /:id/show' do
    carrete = Carrete.new(nombre: 'Carrete 1', direccion: 'Avenida 1', cid: 1, uid: 1, max_asistentes: 100)
    it 'returns http success' do
      get '/carretes/:id/show'
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /:id/edit' do
    it 'returns http success' do
      get '/carretes/:id/edit'
      expect(response).to have_http_status(:success)
    end
  end
end
