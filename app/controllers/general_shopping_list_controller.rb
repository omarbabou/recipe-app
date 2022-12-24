class GeneralShoppingListController < ApplicationController
  def index
    @food_items = Food.all
  end
end
