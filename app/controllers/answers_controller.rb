class AnswersController < ApplicationController


  def create
  	question = Question.find(params[:answer][:question_id])
  	question.answers.create(answer_params)
  	redirect_to question
  end

  def show
    @answer = Answer.find(params[:id])
    @commentable = @answer
    @answers = @commentable.comments
    @comment = Comment.new
  end

  private
	  def answer_params
	  	params.require(:answer).permit(:body).merge(user: current_user)
	  end
end
