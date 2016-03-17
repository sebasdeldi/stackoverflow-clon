class AddUserToQuestionComment < ActiveRecord::Migration
  def change
    add_reference :question_comments, :user, index: true, foreign_key: true
  end
end
