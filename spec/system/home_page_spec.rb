require 'rails_helper'

RSpec.describe "HomePage" do
  before do
    driven_by :rack_test
    visit root_path
  end

  describe 'when no user is logged in' do
    it 'shows the home page link' do
      expected = page.has_link?('Home page')

      expect(expected).to be true
    end

    it 'shows the login link' do
      expected = page.has_link?('Log in')

      expect(expected).to be true
    end
  end

  describe 'when user is logged in' do
    before do
      user = create(:user)
      log_in(user)
      visit root_path
    end

    it 'shows the home page link' do
      expected = page.has_link?('Home page')

      expect(expected).to be true
    end

    it 'shows the logout link' do
      expected = page.has_link?('Log out')

      expect(expected).to be true
    end

    it 'shows the New Cocktail link' do
      expected = page.has_link?('New Cocktail')

      expect(expected).to be true
    end
  end

  context 'when a recipe is present' do
    let!(:recipe) { create(:recipe, title: 'Long island', description: 'Mixing in long fine glass!') }

    before do
      visit root_path
    end

    it 'shows the recipe title' do
      expected = page.has_content?(recipe.title)

      expect(expected).to be true
    end

    it 'shows the recipe description' do
      expected = page.has_content?(recipe.description)

      expect(expected).to be true
    end

    it 'has link Show' do
      expected = page.has_link?('Show')

      expect(expected).to be true
    end
  end
end