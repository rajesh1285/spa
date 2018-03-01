class AddColoumnTimeToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :timezone, :string
    add_column :schedules, :date, :date
  end
end
