class Company < ActiveRecord::Base
  has_many :departments
  has_many :users
  has_one :admin_user

  has_many :restaurants, through: :company_restaurants
  has_many :company_restaurants, dependent: :destroy
end
