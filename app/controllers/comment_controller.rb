class CommentController < ApplicationController
  before_filter :load_project	

  def show
  	@comment = Comment.find(params[:id])
  end

  def create
  	@comment = @project.comments.build(comment_params)
  	@comment.user_id = user_id
  end

  def destroy
  	@review = Comment.find(params[:id])
  	@review.destroy
  end

  private
  	def comment_params
  		params.require(:comment).permit(:remark, :project_id)
	end

	def load_project
		@product = Product.find(paramns[:project_id])
  end
end
