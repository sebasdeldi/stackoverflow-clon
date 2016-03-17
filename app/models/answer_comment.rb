# == Schema Information
#
# Table name: answer_comments
#
#  id         :integer          not null, primary key
#  body       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class AnswerComment < ActiveRecord::Base
	belongs_to :answer
	belongs_to :user
end
