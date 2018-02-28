class AddColoumnTiToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :time, :time
    add_column :schedules, :sunday, :time
    add_column :schedules, :Monday, :time
    add_column :schedules, :Tuesday, :time
    add_column :schedules, :Wednesday, :time
    add_column :schedules, :Thuesday, :time
    add_column :schedules, :Friday, :time
    add_column :schedules, :Saturday, :time


  end
end
