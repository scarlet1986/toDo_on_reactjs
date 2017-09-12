ActiveAdmin.register Item do
  permit_params :id, :body, :list_id

  index do
    selectable_column
    id_column
    column :body
    column :user_id
    column :list_id
    actions
  end

  form do |f|
    f.inputs do
      f.input :list_id
      f.input :body
    end
    f.actions
  end
end
