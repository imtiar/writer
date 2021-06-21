class RemoveColumnsInUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :words, :title, :string
    remove_column :words, :content, :text
  end
end
