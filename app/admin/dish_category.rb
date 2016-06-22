ActiveAdmin.register DishCategory do
  permit_params :name

  index do
    id_column
    column :name
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs "Dish Category" do
      f.input :name
    end
    f.actions
  end
end
