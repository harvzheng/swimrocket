class DeleteEmbedthumbnail < ActiveRecord::Migration
  def change
  	remove_column :articles, :embed
  	remove_column :articles, :thumbnail
  	add_column :articles, :link_id, :string
  end
end
