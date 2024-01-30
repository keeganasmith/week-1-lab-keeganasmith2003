require 'rails_helper'

RSpec.describe Book, type: :model do
  context "original attributes" do
    let(:valid_attributes) {
      { title: "Example", author: "John Doe", publish_date: 2022, price: 4.4}
    }

    # Example of a positive test (valid book)
    it 'is valid with valid attributes' do
      book = Book.new(valid_attributes)
      expect(book).to be_valid
    end
  end
  context "original attributes" do
    let(:valid_attributes) {
      { title: "Example", author: "John Doe", publish_date: 2022, price: 4.4}
    }

    # Example of a positive test (valid book)
    it 'is valid with valid attributes' do
      book = Book.new(valid_attributes)
      expect(book).to be_valid
    end
  end
end






