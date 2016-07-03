ActiveAdmin.register Department do
  menu priority: 4
  permit_params :name, :company_id

  index do
    id_column
    column :name
    column :company
    column :created_at
    column :updated_at
    actions
  end

  form do |f|
    f.inputs I18n.t("activerecord.models.department") do
      f.input :company, as: :select, include_blank: false
      f.input :name
    end
    f.actions
  end
end
