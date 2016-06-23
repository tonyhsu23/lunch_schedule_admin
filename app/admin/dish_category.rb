ActiveAdmin.register DishCategory do
  menu label: I18n.t("active_admin.model.dish_category"), priority: 6
  permit_params :name

  index do
    id_column
    column :name
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs I18n.t("active_admin.model.dish_category") do
      f.input :name, label: I18n.t("active_admin.model.name")
    end
    f.actions
  end
end
