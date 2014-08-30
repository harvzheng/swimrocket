class SubtopicsController < ApplicationController


	def show
    	@subtopic = Subtopic.find(params['id'])
    	@topic = @subtopic.topic
    	@subjects = @subtopic.subjects 
    	@section = @topic.id
    	@subject_id = 'top'
    	@articles = @subtopic.articles
	end
	def new
		@subtopic = Subtopic.new
    @subtopic.topic_id = params['topic_id']
	end
  def create
    @subtopic = Subtopic.new(subtopic_params)
    @topic = @subtopic.topic
    if @subtopic.save
      flash[:success] = "Subtopic successfully created!"
      redirect_to topic_path(@topic)
    else
      render 'new'
    end
  end
  def destroy
    @subtopic = Subtopic.find(params[:id])
    @subtopic.destroy
    flash[:success] = "Subtopic destroyed."
    redirect_to topic_path(@subtopic.topic)
  end
  def edit
    @subtopic = Subtopic.find(params[:id])
  end
  def update
    @subtopic = Subtopic.find(params[:id])
    if @subtopic.update_attributes(subtopic_params)
      flash[:success] = "Subtopic name updated"
      redirect_to topic_path(@subtopic.topic)
    else
      render 'edit'
    end
  end
  private

  def subtopic_params
    params.require(:subtopic).permit(:name, :topic_id)
  end
end