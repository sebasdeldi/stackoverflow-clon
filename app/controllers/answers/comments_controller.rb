class Answers::CommentsController < CommentsController
	before_action :set_commentable
	private
		def set_commentable
			@commentable = Answer.find(params[:answer_id])	
		end

		def redirect_path
			@commentable.question
		end
end