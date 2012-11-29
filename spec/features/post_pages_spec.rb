require 'spec_helper'

describe "Post pages" do
  
  before do
    @post = Post.create(
      title: "tony@baloney.com", 
      publish_date: "2012-12-01", 
      body: "# header1 is so *big*"
    )
  
    User.create(
      email: "tony@baloney.com", 
      password: "asdfasdf", 
      password_confirmation: "asdfasdf"
    )    
    visit login_path
    fill_in 'email', with: 'tony@baloney.com'
    fill_in 'password', with: 'asdfasdf'
    click_button 'Log In'
  end
  
  it "creates a new post" do
    visit admin_path
    click_link 'New Post'
    expect(current_path).to eq new_admin_post_path
    
    num_posts = Post.all.count
    fill_in "post_title", with: 'kool'
    fill_in 'post_body', with: 'and his gang'
    click_button 'Update Post'
    Post.all.count.should eq num_posts+1
  end
  
  it "saves markdown to database" do
    @same_post = Post.find_by_title("tony@baloney.com")
    @same_post.body.should eq @post.body
  end
  
  it "renders markdown to html" do
    visit root_path
    within "#content ul li" do
      page.should have_selector('h1')
      page.should have_content('header1')
    end
  end

end

