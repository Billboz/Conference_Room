class Feature < ActiveRecord::Base
  has_many :conference_room_features
  has_many :rooms, through: :conference_room_features

end
