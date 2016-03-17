class AddQuestionToQuestionComments < ActiveRecord::Migration
  def change
    add_reference :question_comments, :question, index: true, foreign_key: true
  end
end
