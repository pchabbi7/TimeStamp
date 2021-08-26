class ClockEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :clock_events, :logged_in_time, :string
    add_column :clock_events, :logged_out_time, :string
    add_reference :clock_events, :user, foreign_key: true
  end
end
