# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  body             :text
#  commentable_id   :integer
#  commentable_type :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#

class Comment < ActiveRecord::Base

	belongs_to :commentable, polymorphic: true
	belongs_to :user
	validates :body, presence:true
end
