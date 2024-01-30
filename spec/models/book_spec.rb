require 'rails_helper'

RSpec.describe Book, type: :model do
  context "original attributes" do
    let(:valid_attributes) {
      { title: "Example", author: "John Doe", publish_date: DateTime.new(2022, 1, 1), price: 4.4}
    }

    it 'is valid with valid attributes' do
      book = Book.new(valid_attributes)
      expect(book).to be_valid
      expect(book.publish_date).to eq(DateTime.new(2022, 1, 1))
    end
  end
  context "new attributes: publisher" do
    let(:valid_attributes) {
      { title: "Example", author: "John Doe", publish_date: 2022, price: 4.4, publisher: "hello"}
    }

    it 'is valid with valid attributes' do
      book = Book.new(valid_attributes)
      expect(book.publisher).to eq("hello")
    end
  end
  context "new attributes: pages" do
    let(:valid_attributes) {
      { title: "Example", author: "John Doe", publish_date: 2022, price: 4.4, pages: 4}
    }

    it 'is valid with valid attributes' do
      book = Book.new(valid_attributes)
      expect(book.pages).to eq(4)
    end
  end
  context "new attributes: release_date" do
    let(:valid_attributes) {
      { title: "Example", release_date: DateTime.new(2022, 1, 1)}
    }

    it 'is valid with valid attributes' do
      book = Book.new(valid_attributes)
      expect(book.release_date).to eq(DateTime.new(2022, 1, 1))
    end
  end
end






