class BooksController < ApplicationController
	before_action :find_book, only: [:checkout, :edit, :update, :destroy]
	def index
		@books = Book.all
	end

	def show
	end

	def new
		@book = Book.new
	end

	def create
		@book = Book.new(book_params)
		if @book.save
			redirect_to root_path
			flash[:notice] = "New book added"
		else
			flash[:notice] = 'Could not create new book'
		end
	end

	def edit

	end

	def update
		binding.pry
		if @book.update?
			redirect_to root_path
			flash[:notice] = 'Book updated'
		else
			flash[:notice] = 'Book could not be updated'
			
		end
	end
	
	private

	def book_params
		params.require(:book).permit(:title, :author, :summary)
	end

	def find_book
		@book = Book.find(params[:id])
		
	end
end
