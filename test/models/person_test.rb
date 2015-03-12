require 'test_helper'

class PersonTest < ActiveSupport::TestCase
  test 'person model' do
  	testperson = Person.create(maximum_books: 4)
  	assert_equal testperson.name, Person.last.name
  	assert_equal testperson.maximum_books, Person.last.maximum_books
  end
end
