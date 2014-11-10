# == Schema Information
#
# Table name: reservations
#
#  id         :integer          not null, primary key
#  notes      :string(255)
#  event      :string(255)
#  starts_at  :datetime
#  ends_at    :datetime
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  room_id    :integer
#

class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :room

end
