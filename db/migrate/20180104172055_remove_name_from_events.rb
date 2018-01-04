class RemoveNameFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_column :events, :name, :string
    add_column :events, :company_logo, :string
    rename_column :events, :start_time, :date_time
  end
end
