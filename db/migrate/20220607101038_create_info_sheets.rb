class CreateInfoSheets < ActiveRecord::Migration[7.0]
  def change
    create_table :info_sheets do |t|

      t.timestamps
    end
  end
end
