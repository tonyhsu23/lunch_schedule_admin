ActiveAdmin.register Department do
  menu priority: 4
  permit_params :name, :company_id
  
  controller do
    def scoped_collection
      company_id = current_admin_user.company_id
      if company_id.present?
        super.by_company(company_id)
      else
        super.all
      end
    end
  end

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
      f.hidden_field :company
      f.input :name
    end
    f.actions
  end
end
