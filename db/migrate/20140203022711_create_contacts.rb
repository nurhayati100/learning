class CreateContacts < ActiveRecord::Migration
  def up
    create_table :contacts do |t|

      t.string :mobile , :null => false, :defalut => ""
      t.string :address , :null => false, :defalut => ""
    end
  end
  def down
    drop_table :contacts
  end
end
