class AddColoumnButtonToSchedules < ActiveRecord::Migration[5.1]
  def change
    add_column :schedules, :posting_time, :string
  end
end
