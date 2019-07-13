class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.text :text
      t.boolean :closed
      t.integer :list_id

      t.timestamps
    end
  end
end
