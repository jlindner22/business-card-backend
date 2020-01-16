class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :title
      t.string :company
      t.integer :phone_number 
      t.string :email
      t.string :linkedin
      t.string :website
      t.string :address
      t.string :logo
      t.timestamps
    end
  end
end
