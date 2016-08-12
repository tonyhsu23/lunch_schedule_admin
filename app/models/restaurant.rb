class Restaurant < ActiveRecord::Base
  has_many :events, dependent: :destroy
  has_many :dishes, dependent: :destroy
  belongs_to :restaurant_category

  has_many :companies, through: :company_restaurants
  has_many :comapny_restaurants, dependent: :destroy
end
