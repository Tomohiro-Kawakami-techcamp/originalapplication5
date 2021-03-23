class AddDetailsToSchedules < ActiveRecord::Migration[6.0]
  def change
    add_column :schedules, :day, :date
  end
end
