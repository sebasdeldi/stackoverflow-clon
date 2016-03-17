# == Schema Information
#
# Table name: question_comments
#
#  id          :integer          not null, primary key
#  body        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  question_id :integer
#

class QuestionComment < ActiveRecord::Base
	belongs_to :user
	belongs_to :question
end
