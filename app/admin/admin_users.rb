ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation
  scope :all
  index do
    
    selectable_column

    column :email
    column :current_sign_in_at
    column :sign_in_count

    actions

  end


  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  #form do |f|
  #  f.inputs "Admin Details" do
  #    f.input :email

  #  end
  #  f.actions
  #end

  form do |f|
     f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
