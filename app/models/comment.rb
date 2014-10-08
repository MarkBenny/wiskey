# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  post_id    :integer
#  user_id    :integer
#  text       :text
#  created_at :datetime
#  updated_at :datetime
#

class Comment < ActiveRecord::Base
	belongs_to :user
	belongs_to :post
end
