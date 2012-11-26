require 'spec_helper'

describe "Pages" do
  describe "About page" do
    before { visit about_path }
    subject { page }

    it { should have_css('title') }    
    it { should have_selector('p', :text => 'edupreneurship') }
  end
end
