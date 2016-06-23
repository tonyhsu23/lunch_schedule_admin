ActiveAdmin.register Department do
  menu label: I18n.t("active_admin.model.department"), priority: 4
  permit_params :name, :company_id

  index do
    id_column
    column :name
    column :company_id
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs I18n.t("active_admin.model.department") do
      f.input :company, as: :select, label: I18n.t("active_admin.model.company")
      f.input :name, label: I18n.t("active_admin.model.name") 
    end
    f.actions
  end
end
