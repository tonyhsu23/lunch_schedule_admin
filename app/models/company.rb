class Company < ActiveRecord::Base
  has_many :departments
  has_many :users
end
