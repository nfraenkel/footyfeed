require 'spec_helper'

describe 'Adding a post' do
  fixtures :users

  before do
    sign_in
  end

  it 'requires a title, description, and an image!!' do
    visit posts_path
    click_link "New Post"
    click_button "Create Post"
    error_message = "Title is a required field!"
    page.should have_content(error_message)
    error_message2 = "Description is a required field!"
    page.should have_content(error_message2)
    error_message3 = "Image is a required field!"
    page.should have_content(error_message3)
  end

  it 'image must be a gif!!' do
    visit posts_path
    click_link "New Post"
    fill_in "Title", with: "Fake title"
    fill_in "Description", with: "this is not an actual description"
    fill_in "Image", with: "not a gif at all!!"
    click_button "Create Post"
    error_message = "Image must be a gif!"
    page.should have_content(error_message)
  end


end