class SubtopicsController < ApplicationController


	def show
    @subtopic = Subtopic.find(params['id'])
    @topic = @subtopic.topic
    @subjects = @subtopic.subjects 
	end

end