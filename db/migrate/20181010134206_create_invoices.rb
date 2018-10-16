class CreateInvoices < ActiveRecord::Migration[5.2]
  def change
    create_table :invoices do |t|
      t.integer :project_id
      t.bigint :total
      t.timestamps
    end
  end
end
