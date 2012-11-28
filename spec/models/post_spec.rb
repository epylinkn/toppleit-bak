require 'spec_helper'

describe Post do

  before do
    @post = Post.new(title: "Lorem ipsum", text: 'This is a sample post.')
  end
  subject { @post }

end