ActiveAdmin.register User do
  menu priority: 5
  permit_params :email, :password, :password_confirmation,
    :company_id, :department_id, :first_name, :last_name,
    :chinese_first_name, :chinese_last_name, :is_serving

  index do
    selectable_column
    id_column
    column :company
    column :department
    column :email
    column I18n.t('active_admin.model.chinese_full_name') do |user|
      user.chinese_full_name
    end
    column 'Full Name' do |user|
      user.full_name
    end
    column :is_serving
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
    f.inputs I18n.t('activerecord.models.admin_user') do
      f.input :company, include_blank: false
      f.input :department, include_blank: false
      f.input :last_name
      f.input :first_name
      f.input :chinese_last_name
      f.input :chinese_first_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :is_serving, as: :select, include_blank: false
    end
    f.actions
  end

  show :title => proc{ |user| user.full_name }
end
