require 'spec_helper'

describe Post do

  before do
    @post = Post.new(title: "Sample Post", publish_date: "2012-11-25", 
                     text: "This is a sample post with some sample insights here.")
  end

  subject { @post }

  it { should respond_to(:title) }
  it { should respond_to(:publish_date) }
  it { should respond_to(:text) }

  # describe "when password is not present" do
  #   before { @user.password = @user.password_confirmation = " " }
  #   it { should_not be_valid }
  # end
  # 
  # describe "when password doesn't match confirmation" do
  #   before { @user.password_confirmation = "mismatch" }
  #   it { should_not be_valid }
  # end
  # 
  # describe "when password confirmation is nil" do
  #   before { @user.password_confirmation = nil }
  #   it { should_not be_valid }
  # end
end