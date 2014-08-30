class SubjectsController < ApplicationController
	def show
		@subject = Subject.find(params['id'])
		@subtopic = @subject.subtopic
		@subject_id = @subject.id
		@topic = @subtopic.topic
		@section = @topic.id
		@articles = @subject.articles
	end
  def new
    @subject = Subject.new
    @subject.subtopic_id = params['subtopic_id']
  end
  def create
    @subject = Subject.new(subject_params)
    @subtopic = @subject.subtopic
    if @subject.save
      flash[:success] = "Subject successfully created!"
      redirect_to subtopic_path(@subtopic)
    else
      render 'new'
    end
  end
  def destroy
    @subject = Subject.find(params[:id])
    @subtopic = @subject.subtopic
    @subject.destroy
    flash[:success] = "Subject destroyed."
    redirect_to subtopic_path(@subtopic)
  end
  def edit
    @subject = Subject.find(params[:id])
  end
  def update
    @subject = Subject.find(params[:id])
    @subtopic = @subject.subtopic
    if @subject.update_attributes(subject_params)
      flash[:success] = "Subtopic name updated"
      redirect_to subtopic_path(@subtopic)
    else
      render 'edit'
    end
  end

  private

  def subject_params
    params.require(:subject).permit(:name, :subtopic_id)
  end

end