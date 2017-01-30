class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :title
      t.text :name
      t.text :email
      t.text :message

      t.timestamps
    end
  end
end
