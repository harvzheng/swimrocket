class AddEmbedToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :embed, :string
  end
end
