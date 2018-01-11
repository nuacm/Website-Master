class UpdateLocationForEvents < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :room, :string
    add_column :events, :building, :string
    add_column :events, :address, :string
    remove_column :events, :location, :string
  end
end
