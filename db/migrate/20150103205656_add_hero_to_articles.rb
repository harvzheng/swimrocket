class AddHeroToArticles < ActiveRecord::Migration
  def change
    add_column :articles, :hero, :boolean, :default => false
  end
end
