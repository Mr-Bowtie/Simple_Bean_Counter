class AddUserRefToInfoSheets < ActiveRecord::Migration[7.0]
  def change
    add_reference :info_sheets, :user, null: false, foreign_key: true
  end
end
