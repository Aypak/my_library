class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string :title
    	t.string :author
      t.string :coverurl
    	t.text :description
    	t.integer :upvotes
    	t.integer :downvotes
      	t.timestamps
      	t.belongs_to :user
    end
    	
  end
end
