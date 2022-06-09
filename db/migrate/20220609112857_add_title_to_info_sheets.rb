class AddTitleToInfoSheets < ActiveRecord::Migration[7.0]
  def change
    add_column :info_sheets, :title, :string
  end
end
