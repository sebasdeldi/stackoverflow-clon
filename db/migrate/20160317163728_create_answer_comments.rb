class CreateAnswerComments < ActiveRecord::Migration
  def change
    create_table :answer_comments do |t|
      t.string :body

      t.timestamps null: false
    end
  end
end
