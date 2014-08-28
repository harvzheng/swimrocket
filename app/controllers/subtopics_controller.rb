class SubtopicsController < ApplicationController


	def show
    	@subtopic = Subtopic.find(params['id'])
    	@topic = @subtopic.topic
    	@subject = @subtopic.subjects 
    	@section = @topic.id
	end

end