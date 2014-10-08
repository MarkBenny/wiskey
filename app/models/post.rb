# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  title      :string(255)
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
end
