require 'spec_helper'

describe 'Adding a post' do
  fixtures :users

  before do
    sign_in
  end

  it 'requires a title' do
    visit posts_path
    click_link "New Post"
    click_button "Create Post"
    error_message = "These fields are required!"
    page.should have_content(error_message)
  end


end