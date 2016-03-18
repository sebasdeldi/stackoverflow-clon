# == Schema Information
#
# Table name: answer_comments
#
#  id          :integer          not null, primary key
#  body        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  question_id :integer
#

require 'test_helper'

class AnswerCommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
