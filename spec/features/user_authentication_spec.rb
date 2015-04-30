require "rails_helper"

feature "User authentication" do
  let(:user) { create :user }
  let(:sign_in_conf) { "Signed in as #{user.email}" } 

  before :each do
    visit root_path

    sign_in user
  end
  
  scenario "User signs in" do
    expect(page).to have_content sign_in_conf
  end

  scenario "User signs out" do
    sign_out

    expect(page).not_to have_content sign_in_conf
  end

  def sign_in user
    click_link "Sign In"

    fill_in :email, with: user.email
    fill_in :password, with: user.password

    click_button "Log In"
  end

  def sign_out
    click_link "Sign Out"
  end
end

