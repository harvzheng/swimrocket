class Article < ActiveRecord::Base
	belongs_to :subject
  searchable do
    text :title, :description
  end
  def embed
    if(link == nil)
      return nil
    end
    link.partition('=').last
  end
end