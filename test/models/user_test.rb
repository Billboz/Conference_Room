# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  password        :string(255)
#  email           :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#  role            :string(25)       default("student")
#  campus_id       :integer
#  password_digest :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "User exists" do
     assert  User.count > 0, "Custom Error Message From user_test.rb"
   end
end
