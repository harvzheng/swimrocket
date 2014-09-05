class ArticlesController < ApplicationController

  def index
    @search = Article.search do
      fulltext params[:search]
    end
    @articles = @search.results
  end
	def show
		@article = Article.find(params['id'])
		@subject = @article.subject
		@subtopic = @subject.subtopic
		@topic = @subtopic.topic
		@section = @topic.id
	end
  def new
    @article = Article.new
    @article.subject_id = params['subject_id']
  end
  def create
    @article = Article.new(article_params)
    @subtopic = @article.subject.subtopic
    if @article.save
      flash[:success] = "Article successfully created!"
      redirect_to subtopic_path(@subtopic)
    else
      render 'new'
    end
  end
  def destroy
    @article = Article.find(params[:id])
    @subtopic = @article.subject.subtopic
    @subject = @article.subject
    @article.destroy
    flash[:success] = "Article destroyed."
    redirect_to subtopic_path(@subtopic)
  end
  def edit
    @article = Article.find(params[:id])
  end
  def update
    @article = Article.find(params[:id])
    if @article.update_attributes(article_params)
      flash[:success] = "Article name updated"
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :subject_id, :description, :link_id)
  end

end