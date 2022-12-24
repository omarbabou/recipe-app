require 'rails_helper'

RSpec.describe RecipeFood, type: :model do
  describe 'create recipe_food instance' do
    subject do
      user = User.create(name: 'test', email: 'nico@example.com', password: '123456')
      food = Food.new(name: "Pizza", measurement_unit: "2kg", price: 10, quantity: 1, user_id: 1, created_at: Time.now, updated_at: Time.now)
      food.save
      RecipeFood.new(quantity: 1, recipe_id: 1, food_id: 2, created_at: Time.now, updated_at: Time.now)
    end

  end
end
