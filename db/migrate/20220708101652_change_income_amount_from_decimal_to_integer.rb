class ChangeIncomeAmountFromDecimalToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :incomes, :amount, :integer
  end
end
