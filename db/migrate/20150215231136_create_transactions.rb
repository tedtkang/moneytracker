class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :transaction_date
      t.float :amount
      t.text :description
      t.text :location
      t.text :category
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :transactions, :users
  end
end
