ActiveAdmin.register User do
  menu priority: 5, if: proc{ !current_admin_user.super_admin? }
  permit_params :email, :password, :password_confirmation,
    :company_id, :department_id, :first_name, :last_name,
    :chinese_first_name, :chinese_last_name, :is_serving

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
      f.hidden_field :company
      f.input :department, include_blank: false,
        collection: Department.by_company(current_admin_user.company_id)
      f.input :last_name
      f.input :first_name
      f.input :chinese_last_name
      f.input :chinese_first_name
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :is_serving, as: :select, include_blank: false,
        collection: [[I18n.t('active_admin.status_tag.yes'), true],
                     [I18n.t('active_admin.status_tag.no'), false]]
    end
    f.actions
  end

  show title: proc{ |user| "#{user.chinese_full_name} #{user.full_name}" } do
    attributes_table do
      row :id
      row :email
      row :sign_in_count
      row :current_sign_in_at
      row :last_sign_in_at
      row :current_sign_in_ip
      row :last_sign_in_ip
      row :created_at
      row :updated_at
      row :first_name
      row :last_name
      row :chinese_first_name
      row :chinese_last_name
      row :is_serving do |user|
        user.is_serving ? status_tag('yes') : status_tag('no')
      end
      row :company
      row :department
    end
  end
end
