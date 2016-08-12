class Event < ActiveRecord::Base
  belongs_to :restaurant
  has_many :users, through: :event_people
  has_many :event_people, dependent: :destroy
  has_many :dishes, through: :event_dishes
  has_many :event_dishes, dependent: :destroy
end
