class PledgesController < ApplicationController
  before_filter :load_project
  

  def show
  	@pledge = Pledge.find(params[:id])
  end

  def create
  	# @pledge = @project.pledges.build(pledge_params)
  	# @pledge.user_id = user_id

    # instead of the above using the alternate sytax below
    @pledge = Pledge.new(
      :amount => params[:pledge][:amount],
      :project_id => @project.id,
      :user_id => current_user.id
    )
    if @pledge.save
      redirect_to projects_path, notice: "Thank  you #{current_user.username} Your pledge has been added"
    else
      render :action => :show
    end   
  end

  def destroy
  	@pledge = Pledge.find(params[:id])
  	@pledge.destroy
  end

  private
  	def pledge_params
  		params.require(:pledge).permit(:amount, :project_id)
	end

	def load_project
		@project = Project.find(params[:project_id])
  end
end
