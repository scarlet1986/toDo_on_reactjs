class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :body
      t.boolean :completed
      t.integer :priority

      t.timestamps
    end
  end
end
