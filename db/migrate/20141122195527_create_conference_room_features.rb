class CreateConferenceRoomFeatures < ActiveRecord::Migration
  def change
    create_table :conference_room_features do |t|
      t.references :room, index: true
      t.references :feature, index: true

      t.timestamps
    end
  end
end
