require 'spec_helper'

describe Post do
  it "should require an image ending in '.gif', and have fields filled in" do
    post = Post.create
    post.should_not be_valid
    post.title = "lolz"
    post.description = 'not real'
    post.image = "lolz.gif"
    post.should be_valid
  end
end
