require 'rails_helper'

RSpec.describe "User", type: :feature do
  feature "Please sign in" do
    before do
      visit root_path
      fill_in 'username', with: 'root'
      fill_in 'password', with: 'pass'
    end

    scenario "Welcome Page" do
      expect(page).to have_content 'Welcome'
    end

    feature "User does not exist" do
      scenario "Invalid" do
        click_button 'Sign in'
        expect(page).to have_content 'Invalid username or password'
      end
    end

    feature "User exists" do
      background do
        create(:user)
        click_button 'Sign in'
      end

      scenario "Sign In" do
        expect(page).to have_content 'Signed in successfully.'
      end

      scenario "Sign Out" do
        click_link '', href: user_sign_out_path
        expect(page).to have_content 'You need to sign in before continuing'
      end
    end
  end
end
