class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|

      t.string :description
      t.datetime :due_date
      t.integer :project_id
      t.boolean :completed
      t.timestamps
    end
  end
end
