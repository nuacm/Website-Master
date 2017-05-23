class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.string :headline
      t.text :abstract
      t.string :location
      t.datetime :start_time
      t.string :speaker
      t.string :company

      t.timestamps
    end
  end
end
