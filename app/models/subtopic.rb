class Subtopic < ActiveRecord::Base
	belongs_to :topic
	has_many :subjects
	has_many :articles, through: :subjects
end