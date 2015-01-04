class ApplicationController < ActionController::Base
	before_action :retrieve_topics
    before_action :retrieve_articles
    protect_from_forgery with: :exception
    include SessionsHelper

    private

    def retrieve_topics
    	@topics = Topic.all
    end
    def retrieve_articles
        @articles = Article.all
    end

end