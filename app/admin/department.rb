ActiveAdmin.register Department do
  permit_params :name, :company_id

  index do
    id_column
    column :name
    column :company_id
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs "Department" do
      f.input :company, as: :select
      f.input :name
    end
    f.actions
  end
end
