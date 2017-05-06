class CreateOfficers < ActiveRecord::Migration[5.0]
  def change
    create_table :officers do |t|
      t.string :name
      t.string :year
      t.string :position
      t.string :image_path

      t.timestamps
    end
  end
end
