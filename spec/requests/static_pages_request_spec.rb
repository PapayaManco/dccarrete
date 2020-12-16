require 'rails_helper'

RSpec.describe 'StaticPages', type: :request do
  describe '/home' do
    it 'will return a successful request' do
      # Este primer test verifica que el request
      # se está haciendo bien
      get '/static_pages/home'
      expect(response).to have_http_status(:ok)
    end

    it 'will render the home view' do
      # Este segundo test verifica que el contenido que me
      # está enviando es la vista que quiero
      get '/static_pages/home'
      expect(response).to render_template(:home)
    end
  end
end
