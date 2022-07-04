class RenameInfoSheetstoLedgers < ActiveRecord::Migration[7.0]
  def change
    rename_table :info_sheets, :ledgers
  end
end
