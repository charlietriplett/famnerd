class AddIndexToEntriesRecordedAtDate < ActiveRecord::Migration
  def change
    add_index :entries, [:user_id, :recorded_at_date], unique: true
  end
end
