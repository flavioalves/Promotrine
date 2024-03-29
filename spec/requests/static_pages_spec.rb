require 'spec_helper'

describe "Static pages" do

  subject { page }

  describe "Home page" do
    before { visit root_path } 

    it { should have_selector('h1', :text => 'PromoTrine') }
    
    it { should have_selector('title', :text => "PromoTrine | Home") }
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title', :text => "PromoTrine | Help")
    end
  end

  describe "About page" do
    before { visit about_path}

    it "should have the h1 'About Us'" do  
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title', :text => "PromoTrine | About Us")
    end
  end
end