class SubtopicsController < ApplicationController


	def show
    	@subtopic = Subtopic.find(params['id'])
    	@topic = @subtopic.topic
    	@subjects = @subtopic.subjects 
    	@section = @topic.id
    	@subject_id = 'top'
    	@articles = @subtopic.articles
	end

end