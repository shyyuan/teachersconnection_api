class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :convener
      t.string :title
      t.string :description
      t.string :location
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
