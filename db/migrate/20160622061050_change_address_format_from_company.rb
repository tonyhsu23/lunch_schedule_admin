class ChangeAddressFormatFromCompany < ActiveRecord::Migration
  def change
    change_column :companies, :address, :string
  end
end
