class Category < ApplicationRecord
     has_many :tests 
     has_many :categories, through: :tests
end
