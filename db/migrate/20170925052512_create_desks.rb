# frozen_string_literal: true

class CreateDesks < ActiveRecord::Migration[5.1]
  def change
    create_table :desks do |t|
      t.integer :number

      t.timestamps
    end
  end
end
