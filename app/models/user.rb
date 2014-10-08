# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :text
#  image           :text
#  created_at      :datetime
#  updated_at      :datetime
#  password_digest :string(255)
#

class User < ActiveRecord::Base
	has_many :posts
	has_many :comments
	has_secure_password
end
