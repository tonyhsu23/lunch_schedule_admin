class CreateDishImages < ActiveRecord::Migration
  def change
    create_table :dish_images do |t|
      t.belongs_to :dish, index: true

      t.timestamps null: false
    end
  end
end
