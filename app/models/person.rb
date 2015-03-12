class Person < ActiveRecord::Base
	has_many :books
  def initialize(attributes=nil)
    attr_with_defaults = {name: "unknown name", maximum_books: 3}.merge(attributes)
    super(attr_with_defaults)
  end
end
