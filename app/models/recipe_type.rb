class RecipeType < ApplicationRecord
  has_many:recipes

  validates :name, :description, :presence => true
end
