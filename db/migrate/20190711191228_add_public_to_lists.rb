class AddPublicToLists < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :public, :boolean
  end
end
