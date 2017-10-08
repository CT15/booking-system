class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.references :desk_id
      t.references :time_id
      t.references :user_id

      t.timestamps
    end
  end
end
