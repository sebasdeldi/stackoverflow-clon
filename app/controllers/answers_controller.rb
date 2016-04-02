class AnswersController < ApplicationController


  def create
  	question = Question.find(params[:answer][:question_id])
  	question.answers.create(answer_params)
  	redirect_to question
  end

  def upVote
    @answer = Answer.find(params[:answer_id])
    @answer.upvote_by current_user
    redirect_to :back
  end

  def downVote
    @answer = Answer.find(params[:answer_id])
    @answer.downvote_by current_user
    redirect_to :back
  end

  def destroyVote
    @answer = Answer.find(params[:answer_id])
    @answer.votes_for.where(voter_id: current_user).take.try(:destroy)
    redirect_to :back
  end

 

  private
	  def answer_params
	  	params.require(:answer).permit(:body).merge(user: current_user)
	  end
end
