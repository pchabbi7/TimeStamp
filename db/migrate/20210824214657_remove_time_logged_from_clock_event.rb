class RemoveTimeLoggedFromClockEvent < ActiveRecord::Migration[6.1]
  def change
    remove_column :clock_events, :time_logged, :datetime
    remove_column :clock_events, :id, :integer
  end
end
