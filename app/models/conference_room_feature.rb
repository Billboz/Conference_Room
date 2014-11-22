class ConferenceRoomFeature < ActiveRecord::Base
  belongs_to :room
  belongs_to :feature
end
