class TopicsController < ApplicationController


	def show
		@topic = Topic.find(params['id'])
		@subtopics = @topic.subtopics
		@section = @topic.id
		@subjects = @topic.subjects
	end

end