ActiveAdmin.register DishCategory do
  menu priority: 7
  permit_params :name

  index do
    id_column
    column :name
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs I18n.t("activerecord.models.dish_category") do
      f.input :name
    end
    f.actions
  end
end
