class CreateSays < ActiveRecord::Migration
  def change
    create_table :says do |t|
      t.string :commenter
      t.text :body
      t.references :post

      t.timestamps
    end

    add_index :says, :post_id
  end
end
