class PublicRecipesController < ApplicationController
    def index
        @public_recipes = PublicRecipe.all
    end
end