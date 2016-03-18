class AnswerCommentsController < ApplicationController

  def create
  	answer = Answer.find(params[:answer_id])
  	answer.answer_comments.create(answer_comments_params)
  	redirect_to question
  end

  private
  	def answer_comments_params
  		params.require(:answer_comment).permit(:body).merge(user: current_user)
  	end
end
