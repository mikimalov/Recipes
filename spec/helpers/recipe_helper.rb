module RecipeHelper
  def create_cocktail
    title = 'New Cocktail'
    description = 'Summer Cocktail'
    ingredient = 'Ingredient'
    instruction = 'Instruction'

    within('form') do
      fill_in "Title", with: title
      fill_in "Description", with: description
      fill_in "recipe[ingredients_attributes][0][body]", with: ingredient
      fill_in "recipe[ingredients_attributes][1][body]", with: ingredient
      fill_in "recipe[ingredients_attributes][2][body]", with: ingredient
      fill_in "recipe[ingredients_attributes][3][body]", with: ingredient
      fill_in "recipe[ingredients_attributes][4][body]", with: ingredient
      fill_in "recipe[ingredients_attributes][5][body]", with: ingredient
      fill_in "recipe[instructions_attributes][0][body]", with: instruction
      fill_in "recipe[instructions_attributes][1][body]", with: instruction
      fill_in "recipe[instructions_attributes][2][body]", with: instruction
      fill_in "recipe[instructions_attributes][3][body]", with: instruction
      fill_in "recipe[instructions_attributes][4][body]", with: instruction
      fill_in "recipe[instructions_attributes][5][body]", with: instruction

      click_on "Save"
    end
  end
end