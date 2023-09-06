require 'rails_helper'

RSpec.describe Book, type: :model do
  it "is valid with valid attributes" do
    book = Book.new(title: "Test Title", author: "Test Author", price: 10.0, published_date: Date.today)
    expect(book).to be_valid
  end

  it "is not valid without a title" do
    book = Book.new(title: nil)
    expect(book).to_not be_valid
  end
end