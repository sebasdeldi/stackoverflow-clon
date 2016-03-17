class QuestionCommentsController < ApplicationController


  def create
  	question_comment = Question.find(params[:id])
  	question_comment.create(question_comment_params)
	redirect_to question
  end

  private
  	def question_comment_params
  		params.require(:question_comment).permit(:body).merge(user: current_user)
  	end
end
