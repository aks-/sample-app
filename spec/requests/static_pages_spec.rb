require 'spec_helper'

describe "StaticPages" do

  describe 'Home Pages' do

    it 'should have right title' do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end

    it "should have the content 'Sample App'" do
      visit '/static_pages/home'
      expect(page).to have_content('Sample App')
    end
  end

  describe 'Help page' do

    it 'should ahve the content *Help*' do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end
    it 'should have right title' do
      visit '/static_pages/home'
      expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
    end

  end

  describe 'Home page' do

    it 'should have the content *About Us*' do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end
  end
  it 'should have right title' do
    visit '/static_pages/home'
    expect(page).to have_title('Ruby on Rails Tutorial Sample App | Home')
  end

end
