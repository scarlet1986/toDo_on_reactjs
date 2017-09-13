ActiveAdmin.register List do
  permit_params :id, :title, :user_id

  index do
    selectable_column
    id_column
    column :title
    column :user
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :user_id
    end
    f.actions
  end
end
