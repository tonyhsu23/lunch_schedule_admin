ActiveAdmin.register RestaurantCategory do
  permit_params :name

  index do
    id_column
    column :name
    column :address
    column :created_at
    column :updated_at
  end

  form do |f|
    f.inputs "Restaurant Category" do
      f.input :name
    end
    f.actions
  end
end
