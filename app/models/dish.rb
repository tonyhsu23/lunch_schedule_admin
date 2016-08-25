class Dish < ActiveRecord::Base
  belongs_to :dish_category
  belongs_to :restaurant

  has_many :dishes, dependent: :destroy
end
