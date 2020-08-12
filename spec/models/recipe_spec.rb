require 'rails_helper'

RSpec.describe Recipe do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:description) }
    it { is_expected.to validate_length_of(:description).is_at_most(Recipe::MAXIMUM_LENGTH) }
  end

  describe "associations" do
    it { is_expected.to belong_to(:user) }
    it { is_expected.to have_many(:ingredients) }
    it { is_expected.to have_many(:instructions) }
    it { is_expected.to accept_nested_attributes_for(:ingredients).allow_destroy(true)  }
    it { is_expected.to accept_nested_attributes_for(:instructions).allow_destroy(true) }
  end

  describe "dependency" do
    let(:ingredients_count) { 3 }
    let(:instructions_count) { 6 }
    let(:recipe) { create(:recipe) }

    it "is expected to destroy ingredients when recipe destroyed" do
      create_list(:ingredient, ingredients_count, recipe: recipe)
      expect { recipe.destroy }.to change { Ingredient.count }.by(-ingredients_count)
    end

    it "is expected to destroy instructions when recipe destroyed" do
      create_list(:instruction, instructions_count, recipe: recipe)
      expect { recipe.destroy }.to change { Instruction.count }.by(-instructions_count)
    end
  end
end
