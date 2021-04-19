class Recipe < ApplicationRecord
  belongs_to:category
  belongs_to:recipe_type
  has_and_belongs_to_many:authors

  validates :name, :description, :featured, :ingredients, :steps, :submit_date, :image_url, :presence => true, :uniqueness => true
  validates :description, :presence => true

  def is_new
    created_at.today? ? "new!" : ""
  end
end
