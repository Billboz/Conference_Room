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

class User < ActiveRecord::Base
  has_many :reservations
  belongs_to :campus

  has_secure_password

  validates :name, :role, :campus_id, presence: true
  validates :password, length: { minimum: 6}


  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true,
            format: { with: VALID_EMAIL_REGEX},
            uniqueness:  { case_sensitive: false}

  validates :password, length: { minimum: 6 }
  def admin?
    self.role == 'staff'
  end
end
