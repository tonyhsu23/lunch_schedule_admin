ActiveAdmin.register Company do
  menu label: I18n.t("active_admin.model.company") , priority: 3
  permit_params :name, :address

  index do
    id_column
    column :name
    column :address
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs I18n.t("active_admin.model.company") do
      f.input :name, label: I18n.t("active_admin.model.name") 
      f.input :address, label: I18n.t("active_admin.model.address")
    end
    f.actions
  end
end
