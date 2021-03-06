ActiveAdmin.register User do
  permit_params :id, :email, :password, :password_confirmation

  index do
    id_column
    column :email
    actions
  end

  form do |f|
    f.inputs 'User' do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
end
