ActiveAdmin.register AdminUser do
  menu label: "管理員", priority: 2
  permit_params :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column :email
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs "Admin Details" do
      f.input :email
      f.input :password, label: I18n.t("active_admin.model.password")
      f.input :password_confirmation,
        label: I18n.t("active_admin.model.password_confirm")
    end
    f.actions
  end

end
