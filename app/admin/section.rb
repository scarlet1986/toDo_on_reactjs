ActiveAdmin.register Section do
  permit_params :id, :name, :visable

  form do |f|
    f.inputs 'User' do
      f.input :name
      f.input :visable
      f.has_many :items do |i|
        i.input :body
      end
    end
    f.actions
  end

  show do
    attributes_table do
      row :name
      row :visible
    end
    panel "Items" do
      table_for section.items do
        column :id do |item|
          item.id
        end
        column :body do |item|
          item.body
        end
      end
    end
  end
end
