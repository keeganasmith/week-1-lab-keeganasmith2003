require 'rails_helper'

RSpec.describe BooksController, type: :controller do
  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates a new book with a flash notice' do
        book_params = { title: 'New Book', author: 'Author Name', publish_date: 2024, price: 4.4  }
        expect {
          post :create, params: { book: book_params }
        }.to change(Book, :count).by(1)
        
        expect(flash[:notice]).to eq('Book was created.')
      end
    end
    context 'with invalid attributes' do
      it 'creates a new book with a flash notice' do
        book_params = { title: nil, author: 'Author Name', publish_date: 2024, price: "123"  }
        expect {
          post :create, params: { book: book_params }
        }.to change(Book, :count).by(0)
        
        expect(flash[:notice]).to eq('Book was not created.')
      end
    end
    context 'with valid attributes' do
      it 'creates a new book with a flash notice' do
        book_params = { title: "Example", release_date: DateTime.new(2022, 1, 1)}
        expect {
          post :create, params: { book: book_params }
        }.to change(Book, :count).by(1)
        created_book = Book.last 

        expect(created_book.release_date).to eq(book_params[:release_date])
        expect(flash[:notice]).to eq('Book was created.')
      end
    end
    context 'with valid attributes' do
      it 'creates a new book with a flash notice' do
        book_params = { title: "Example", author: "John Doe", publish_date: 2022, price: 4.4, pages: 4}
        expect {
          post :create, params: { book: book_params }
        }.to change(Book, :count).by(1)
        created_book = Book.last 

        expect(created_book.pages).to eq(book_params[:pages])
        expect(flash[:notice]).to eq('Book was created.')
      end
    end
    context 'with valid attributes' do
      it 'creates a new book with a flash notice' do
        book_params = { title: "Example", author: "John Doe", publish_date: 2022, price: 4.4, publisher: "hello"}
        expect {
          post :create, params: { book: book_params }
        }.to change(Book, :count).by(1)
        
        expect(flash[:notice]).to eq('Book was created.')
        created_book = Book.last

        expect(created_book.publisher).to eq(book_params[:publisher])
      end
    end
  end
end