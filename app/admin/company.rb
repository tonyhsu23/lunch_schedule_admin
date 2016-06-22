ActiveAdmin.register Company do
  permit_params :name, :address

  index do
    id_column
    column :name
    column :address
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs "Company" do
      f.input :name
      f.input :address
    end
    f.actions
  end
end
