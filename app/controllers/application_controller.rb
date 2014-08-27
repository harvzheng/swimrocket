class ApplicationController < ActionController::Base
	before_action :retrieve_topics
    protect_from_forgery with: :exception
    include SessionsHelper

    private

    def retrieve_topics
    	@topics = Topic.all
    end
  
end