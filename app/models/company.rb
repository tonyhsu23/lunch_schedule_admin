class Company < ActiveRecord::Base
  has_many :departments
  has_many :users
  has_one :admin_user
end
