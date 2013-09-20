class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :sname
      t.integer :smax

      t.timestamps
    end
  end
end
