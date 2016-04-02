class QuestionsController < ApplicationController
  before_action :private_access, except: [:index, :show]

  def index
    @questions = Question.all
    if params[:title].present?
      @questions = @questions.where("title LIKE ?", "%#{params[:title]}%")
    end
  end

  def new
    @question = current_user.questions.build
  end

  def create
    @question = current_user.questions.build(question_params)
    if @question.save
      redirect_to root_path
    else
      render :new
    end
  end

  def upVote
    @question = Question.find(params[:question_id])
    @question.upvote_by current_user
    redirect_to :back
  end

  def downVote
    @question = Question.find(params[:question_id])
    @question.downvote_by current_user
    redirect_to :back
  end

  def destroyVote
    @question = Question.find(params[:question_id])
    @question.votes_for.where(voter_id: current_user).take.try(:destroy)
    redirect_to :back
  end

  

  def edit
  end

  def update
  end

  def delete
  end

  def show
    @question = Question.find(params[:id])
    # @current_user_voted_up_question = (current_user.voted_up_on? @question)
    # @current_user_voted_down_question = (current_user.voted_down_on? @question) 
  end

  private
    def question_params
      params.require(:question).permit(:title, :body)
    end
end
