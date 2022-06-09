class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.decimal :amount, precision: 5, scale: 2
      t.integer :period, default: 3

      t.timestamps
    end
  end
end
