class CreateClockEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :clock_events do |t|
      t.string :name
      t.boolean :clocking_in

      t.timestamps
    end
  end
end
