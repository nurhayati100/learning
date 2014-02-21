class AddAttachmentToLists < ActiveRecord::Migration
  def change
    add_column :lists, :attachment, :string
  end
end
