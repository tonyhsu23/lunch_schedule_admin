ActiveAdmin.register Company do
  menu priority: 3
  permit_params :name, :address

  index do
    id_column
    column :name
    column :address
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs I18n.t("activerecord.models.company") do
      f.input :name
      f.input :address
    end
    f.actions
  end
end
