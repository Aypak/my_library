require 'test_helper'

class BookTest < ActiveSupport::TestCase
 	test 'book model' do
 		testbook = Book.create(title: 'Don Quixote', author: 'Cervantes')
 		assert_equal testbook.title,Book.last.title
 		assert_equal testbook.author,Book.last.author
 	end
end
