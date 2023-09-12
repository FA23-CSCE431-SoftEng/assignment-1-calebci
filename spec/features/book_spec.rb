require 'rails_helper'

RSpec.feature "Books", type: :feature do
  scenario "User adds a new book successfully" do
    visit new_book_path

    fill_in "Title", with: "Test Title"
    fill_in "Author", with: "Test Author"
    fill_in "Price", with: 10.0
    select Date.today.year.to_s, from: "Published date"

    click_button "Create Book"

    expect(page).to have_content("Book was successfully created.")
  end

  scenario "User fails to add a new book with blank title" do
    visit new_book_path

    fill_in "Title", with: ""
    fill_in "Author", with: "Test Author"
    fill_in "Price", with: 10.0
    select Date.today.year.to_s, from: "Published date"

    click_button "Create Book"

    expect(page).to have_content("Title can't be blank")
  end
end