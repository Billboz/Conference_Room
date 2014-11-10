class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :notes
      t.string :event
      t.datetime :starts_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end
