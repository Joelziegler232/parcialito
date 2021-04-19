class Author < ApplicationRecord
  belongs_to:category
  has_and_belongs_to_many:recipes

  validates :first_name, :last_name, :birthdate, :nationality, :presence => true
end
