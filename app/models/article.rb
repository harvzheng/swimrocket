class Article < ActiveRecord::Base
	belongs_to :subject
  searchable do
    text :title, :description
  end
end