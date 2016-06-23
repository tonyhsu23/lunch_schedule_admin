ActiveAdmin.register RestaurantCategory do
  menu label: I18n.t("active_admin.model.restaurant_category"), priority: 5
  permit_params :name

  index do
    id_column
    column :name
    column :address
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs I18n.t("active_admin.model.restaurant_category") do
      f.input :name, label: I18n.t("active_admin.model.name")
    end
    f.actions
  end
end
