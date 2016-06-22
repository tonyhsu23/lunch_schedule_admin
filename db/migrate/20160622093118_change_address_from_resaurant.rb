class ChangeAddressFromResaurant < ActiveRecord::Migration
  def change
    change_column :restaurants, :address, :string
  end
end
