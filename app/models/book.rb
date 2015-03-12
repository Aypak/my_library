class Book < ActiveRecord::Base
	belongs_to :person
	def initialize(attributes=nil)
	    attr_with_defaults = {title: "unknown title", author: "unknown author"}.merge(attributes)
	    super(attr_with_defaults)
	end
	
end
