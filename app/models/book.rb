class Book < ActiveRecord::Base
	belongs_to :person
	validates :title, :author, :price, presence: true
	
	
end
