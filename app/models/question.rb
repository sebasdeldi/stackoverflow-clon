# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Question < ActiveRecord::Base
	belongs_to :user
	has_many :answers
	has_many :question_comments
	validates :title, presence:true
	validates :body, presence:true
end
