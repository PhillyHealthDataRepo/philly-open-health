require "rails_helper"

feature "User authentication" do
  let(:user) { create :user }
  let(:sign_in_conf) { "Signed in as #{user.email}" }
  let(:invalid_usr_msg) { "Email or password is invalid" }

  before :each do
    visit root_path
  end

  context "A User with no account" do
    scenario "User tries to sign in" do
      fake_user = build :user

      sign_in fake_user

      expect(page).to have_content invalid_usr_msg
    end
  end

  context "A valid User who types incorrect info" do
    scenario "With improper password" do
      user.password = "wrong password"

      sign_in user

      expect(page).to have_content invalid_usr_msg
    end

    scenario "With invalid email" do
      user.email = "wrong@email.com"

      sign_in user

      expect(page).to have_content invalid_usr_msg
    end
  end

  context "A User with a valid account" do
    scenario "User signs in" do
      sign_in user

      expect(page).to have_content sign_in_conf
    end

    scenario "User signs out" do
      sign_in user

      sign_out

      expect(page).not_to have_content sign_in_conf
    end
  end

  def sign_in(user)
    click_link "Sign In"

    fill_in :email, with: user.email
    fill_in :password, with: user.password

    click_button "Log In"
  end

  def sign_out
    click_link "Sign Out"
  end
end
