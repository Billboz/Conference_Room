# == Schema Information
#
# Table name: rooms
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  location    :string(255)
#  sq_ft       :integer
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  photo       :string(255)
#  campus_id   :integer
#

class Room < ActiveRecord::Base
  has_many :reservations
  belongs_to :campus
  has_many :conference_room_features
  has_many :features, through: :conference_room_features


  mount_uploader :photo, PhotoUploader

  validates :name, :campus, presence: true

end

