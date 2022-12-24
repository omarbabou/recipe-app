require 'rails_helper'

RSpec.describe Food, type: :request do
  context 'testing requests' do
    it 'GET /foods/:id' do
      user = User.create(name: 'test', email: 'tedn@example.com', password: 'password')
      recipe = Recipe.create(name: 'test', description: 'test', user: user)
      food = Food.create(name: 'test', price: 1, user: user)
      sign_in user
      get "/foods/#{food.id}"
      expect(response).to have_http_status(200)
    end
end
end
