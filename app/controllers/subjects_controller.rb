class SubjectsController < ApplicationController
	def show
		@subject = Subject.find(params['id'])
		@subtopic = @subject.subtopic
		@subject_id = @subject.id
		@topic = @subtopic.topic
		@section = @topic.id
	end
end