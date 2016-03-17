class CreateQuestionComments < ActiveRecord::Migration
  def change
    create_table :question_comments do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
