class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|

      t.string :name
      t.integer :client_id
      t.string :description
      t.boolean :completed
      t.decimal :fee
      t.decimal :hourly_rate
      t.time :time_spent
      t.datetime :start_date
      t.datetime :end_date
      t.timestamps
    end
  end
end
