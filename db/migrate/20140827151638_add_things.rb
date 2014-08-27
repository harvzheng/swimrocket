class AddThings < ActiveRecord::Migration
  def change
  	create_table :topics do |t|
  		t.string :name
  	end
  	create_table :subtopics do |t|
    	t.string :name

      	t.belongs_to :topic
    end
    create_table  :articles do |t|
  		t.string  :title
  		t.text    :description
  		t.integer :user_id
  		t.string  :link

  		t.timestamps

      	t.belongs_to :subject
  	end
  end
end
