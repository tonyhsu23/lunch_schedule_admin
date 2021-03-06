ActiveAdmin.register RestaurantCategory do
  menu priority: 6
  permit_params :name

  index do
    id_column
    column :name
    column :address
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs I18n.t("activerecord.models.restaurant_category") do
      f.input :name
    end
    f.actions
  end
end
