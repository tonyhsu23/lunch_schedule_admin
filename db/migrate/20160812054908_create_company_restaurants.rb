class CreateCompanyRestaurants < ActiveRecord::Migration
  def change
    create_table :company_restaurants do |t|
      t.belongs_to :company, index: true
      t.belongs_to :restaurant, index: true

      t.timestamps null: false
    end
  end
end
