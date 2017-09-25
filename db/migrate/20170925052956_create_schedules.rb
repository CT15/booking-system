class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.reference :desk_id
      t.reference :time_id
      t.reference :user_id

      t.timestamps
    end
  end
end
