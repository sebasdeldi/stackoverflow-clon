class AddUserToAnswerComment < ActiveRecord::Migration
  def change
    add_reference :answer_comments, :user, index: true, foreign_key: true
  end
end
