class CreateShowToTimes < ActiveRecord::Migration
  def change
    create_table :show_to_times do |t|
      t.string :show_id
      t.string :date
      t.string :time

      t.timestamps
    end
  end
end
