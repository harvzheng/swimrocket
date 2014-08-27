class Subject < ActiveRecord::Base
	belongs_to :subtopic
	has_many :articles
end