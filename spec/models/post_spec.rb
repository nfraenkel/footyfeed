require 'spec_helper'

describe Post do

  it "should require a title" do
    post = Post.create
    post.should_not be_valid
    post.title = "Sick goal"
    post.should be_valid
  end
end


