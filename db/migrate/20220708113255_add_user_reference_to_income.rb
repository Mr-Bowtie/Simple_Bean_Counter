class AddUserReferenceToIncome < ActiveRecord::Migration[7.0]
  def change
    add_reference :incomes, :user, null: false, foreign_key: true
  end
end
