# == Schema Information
#
# Table name: answers
#
#  id          :integer          not null, primary key
#  body        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  question_id :integer
#

class Answer < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	belongs_to :question
	has_many :comments, as: :commentable
	validates :body, presence:true
end
