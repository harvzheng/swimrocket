class AddSubject < ActiveRecord::Migration
  def change
  	create_table :subjects do |t|
  		t.string :name

  		t.belongs_to :subtopic
  	end
  end
end
