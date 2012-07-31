class CreateUrls < ActiveRecord::Migration
	#The Migration tells Rails that when it is applied, 
	#it should create the Urls table with a URL field
  def self.up
    create_table :urls do |t|
      #cannot create an empty URL
      t.string :url, :null => false
	  t.timestamps
    end
  end
  def self.down
  	drop_table :urls
  end
end
