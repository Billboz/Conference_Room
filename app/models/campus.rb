# == Schema Information
#
# Table name: campus
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  city           :string(255)
#  state          :string(255)
#  phone_number   :integer
#  zip_code       :integer
#  street_address :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Campus < ActiveRecord::Base
  has_many :users
  has_many :rooms

end
