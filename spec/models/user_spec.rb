require 'rails_helper'

RSpec.describe User do
  describe "validations" do
    it { is_expected.to validate_presence_of(:full_name) }
    it { is_expected.to validate_length_of(:full_name).is_at_least(User::MINIMUM_LENGTH) }
    it { is_expected.to validate_presence_of(:first_name) }
    it { is_expected.to validate_presence_of(:last_name) }
    it { is_expected.to validate_presence_of(:email) }
    it { is_expected.to validate_presence_of(:password) }
    it { is_expected.to validate_length_of(:password).is_at_least(User::MINIMUM_LENGTH)}
    it { is_expected.to have_secure_password }

    context 'has format email that' do
      it 'can be valid' do
        email = build(:user, email: 'TESTING@VALID.COM')
        expect(email.valid?).to be true
      end

      it 'can be invalid' do
        email = build(:user, email: 'TESTING@INVALID')
        expect(email.valid?).to be false
      end
    end

    context 'has format password that' do
      it 'can be valid' do
        password = build(:user, password: 'hellorails123', password_confirmation: 'hellorails123')
        expect(password.valid?).to be true
      end

      it 'can be invalid' do
        password = build(:user, password: 'Hello-Rails:', password_confirmation: 'Hello-Rails:')
        expect(password.valid?).to be false
      end
    end
  end

  describe "associations" do
    it { is_expected.to have_many(:recipes) }
  end

  describe "dependency" do
    let(:recipes_count) { 11 }
    let(:user) { create(:user) }

    it "is expected to destroy recipes when user destroyed" do
      create_list(:recipe, recipes_count, user: user)
      expect {user.destroy}.to change {Recipe.count}.by(-recipes_count)
    end
  end

  describe "before saving" do
    it "downcase and capitalize first and last name" do
      miki_malov = create(:user, first_name: 'miKI', last_name: 'mAloV')
      expect(miki_malov.first_name).to eq 'Miki'
      expect(miki_malov.last_name).to eq 'Malov'
    end

    it "transforms email to downcase" do
      miki = create(:user, email: 'MIKI12@GMAIL.com')
      expect(miki.email).to eq 'miki12@gmail.com'
    end
  end
end