class AddClosedToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :closed, :boolean
  end
end
