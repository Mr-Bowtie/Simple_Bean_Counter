class CreateExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :expenses do |t|
      t.decimal :amount
      t.integer :due_day_number
      t.boolean :recurring

      t.timestamps
    end
  end
end
