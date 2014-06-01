class AddDefaultTimeToUser < ActiveRecord::Migration
  def change
    add_column :users, :default_time, :time
  end
end
