class AddColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :line1, :text
    add_column :words, :line2, :text
    add_column :words, :line3, :text
  end
end
