ActiveAdmin.register AdminUser do
  menu priority: 2, if: proc{ current_admin_user.super_admin? }
  permit_params :email, :password, :password_confirmation, :company_id, :role

  index do
    selectable_column
    id_column
    column :role
    column :company
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :role
  filter :company
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs I18n.t("activerecord.models.admin_user") do
      f.input :role
      f.input :company
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
