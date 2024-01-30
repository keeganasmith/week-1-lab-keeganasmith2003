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
      flash[:notice] = 'Book was created.'

      redirect_to "/"
    else 
      flash[:notice] = 'Book was not created.'
      redirect_to "/"
    end
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
      flash[:notice] = 'Book was updated.'
      redirect_to "/"
    end
  end
  def delete
    @book = Book.find(params[:id])
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = 'Book was destroyed.'
    redirect_to "/"
  end

  def book_params
    params.require(:book).permit(:title, :price, :author, :publish_date, :publisher, :pages, :release_date)
  end
end
