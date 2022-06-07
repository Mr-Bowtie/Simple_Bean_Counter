class CreateIncomes < ActiveRecord::Migration[7.0]
  def change
    create_table :incomes do |t|
      t.decimal :amount
      t.integer :period

      t.timestamps
    end
  end
end
