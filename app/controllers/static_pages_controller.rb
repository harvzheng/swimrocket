class StaticPagesController < ApplicationController
  before_action :retrieve_subtopics
  before_action :retrieve_subjects
  def home
  	@section = 'home'
  end
  def help
  end
  private
  def retrieve_subtopics
      @subtopics = Subtopic.all
  end
  def retrieve_subjects
      @subjects = Subject.all
  end
end
