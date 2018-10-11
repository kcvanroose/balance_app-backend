class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.integer :user_id
      t.string :name
      t.string :address
      t.string :contact
      t.string :phone_number
      t.string :email_address
      t.timestamps
    end
  end
end
