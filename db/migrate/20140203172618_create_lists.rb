class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.string  :member_id
      t.string :title
      t.string :category
      t.text :body
      t.string :published
      t.references :member

      t.timestamps
    end
  end
end
