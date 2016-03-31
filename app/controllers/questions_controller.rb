class QuestionsController < ApplicationController
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

  def edit
  end

  def update
  end

  def delete
  end

  def show
    @question = Question.find(params[:id])
  end

  private
    def question_params
      params.require(:question).permit(:title, :body)
    end
end
