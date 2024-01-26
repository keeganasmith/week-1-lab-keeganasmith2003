class BooksController < ApplicationController
  def index
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to "/"
    end

  end

  def edit
  end

  def update
  end

  def destroy
  end

  def book_params
    params.require(:book).permit(:title)
  end
end
