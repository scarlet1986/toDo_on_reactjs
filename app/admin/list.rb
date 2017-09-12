ActiveAdmin.register List do
  permit_params :id, :title, :user_id

  index do
    selectable_column
    id_column
    column :title
    # column :user_id
    column :items do |item|
      Item.find(item.item_id)
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :user
      # f.has_many :items do |item|
      #   item.input :body
      # end
    end
    f.actions
  end
end
