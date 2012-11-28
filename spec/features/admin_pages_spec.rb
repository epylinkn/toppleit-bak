require 'spec_helper'

describe "Admin Pages" do
  
  describe "dashboard" do
    
    it "redirects to login when not logged in" do
      visit admin_path
      expect(current_path).to eq login_path
      within('#content h1') { page.should have_content 'Log In' }
    end      
    
    before do
      User.create(
        email: "tony@baloney.com", 
        password: "asdfasdf", 
        password_confirmation: "asdfasdf"
      )
    end  
    
    it "redirects to dashboard after login" do
      
      visit login_path
      fill_in 'email', with: 'tony@baloney.com'
      fill_in 'password', with: 'asdfasdf'
      click_button 'Log In'
      
      expect(current_path).to eq admin_path
      within 'header h1' do
        page.should have_content('ToppleIt Admin')
      end
    end
      
      
  end

end

