class ArticlesController < ApplicationController


	def show
		@article = Article.find(params['id'])
		@subject = @article.subject
		@subtopic = @subject.subtopic
		@topic = @subtopic.topic
		@section = @topic.id
	end

end