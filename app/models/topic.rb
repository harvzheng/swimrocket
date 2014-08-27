class Topic < ActiveRecord::Base
	has_many :subtopics
	has_many :subjects, through: :subtopics
end