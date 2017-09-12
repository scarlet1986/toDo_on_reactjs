class AddAssosiations < ActiveRecord::Migration[5.1]
  def change
    add_reference :lists, :user
    add_reference :items, :list
  end
end
