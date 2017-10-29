# frozen_string_literal: true

class CreateTimeInDays < ActiveRecord::Migration[5.1]
  def change
    create_table :time_in_days do |t|
      t.time :start
      t.time :end

      t.timestamps
    end
  end
end
