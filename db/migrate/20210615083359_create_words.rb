class CreateWords < ActiveRecord::Migration[6.1]
  def change
    create_table :words do |t|
      t.string :title
      t.text :content
      t.references :user, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
