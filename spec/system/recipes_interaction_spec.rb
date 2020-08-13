require 'rails_helper'

RSpec.describe "RecipesInteraction" do
  let(:user) {create(:user)}
  let(:recipe) {create(:recipe, user: user)}

  before do
    driven_by :rack_test
    log_in(user)

    click_on "New Cocktail"

    create_cocktail
  end

  describe 'Creating a recipe' do
    it 'creates and shows the newly created cocktail' do
      title = 'New Cocktail'
      description = 'Summer Cocktail'
      ingredient = 'Ingredient 1'
      instruction = 'Instruction 1'

      expected = page.has_link?('Edit cocktail')

      expect(expected).to be true
      expect(page).to have_content(title)
      expect(page).to have_content(description)
    end
  end

  describe 'Editing a recipe' do
    it 'edits and shows edited cocktail' do
      title1 = 'Long island'
      description1 = 'Strong and fresh one!'

      click_on "Edit cocktail"

      within('form') do

        fill_in "Title", with: title1
        fill_in "Description", with: description1

        click_on "Update"
      end

      expect(page).to have_content(title1)
      expect(page).to have_content(description1)
    end

    it 'edits and shows edited cocktail ingredients' do
      ingredient1 = 'New ingredient'

      click_on "Edit/Delete ingredient"

      within('form') do

        fill_in "recipe[ingredients_attributes][0][body]", with: ingredient1

        click_on "Update"
      end

      expect(page).to have_content(ingredient1)
    end

    it 'edits and shows edited cocktail instructions' do
      instruction1 = 'New instruction'

      click_on "Edit/Delete instruction"

      within('form') do

        fill_in "recipe[instructions_attributes][2][body]", with: instruction1

        click_on "Update"
      end

      expect(page).to have_content(instruction1)
    end
  end

  describe 'Deleting a recipe' do
    it 'deletes the cocktail' do

      click_on 'Delete'

      expect(page).to have_content('Cocktail recipes')
    end
  end
end