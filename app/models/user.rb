# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  password   :string(255)
#  email      :string(255)
#  created_at :datetime
#  updated_at :datetime
#  role       :string(25)       default("student")
#  campus_id  :integer
#

class User < ActiveRecord::Base
  has_many :rooms, through: :reservations
  has_many :reservations
  belongs_to :campus
end
