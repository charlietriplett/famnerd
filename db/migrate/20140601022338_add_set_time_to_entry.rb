class AddSetTimeToEntry < ActiveRecord::Migration
  def change
    add_column :entries, :manual_time, :boolean
  end
end
