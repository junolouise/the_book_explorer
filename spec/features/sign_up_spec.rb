# frozen_string_literal: true

feature "user can sign up" do
  scenario "checks user can sign up" do
    visit("/")
    click_link("Sign Up")
    fill_in "user[email]", with: "userone@gmail.com"
    fill_in "user[password]", with: "secret"
    fill_in "user[password_confirmation]", with: "secret"
    click_button "Signup"
    expect(page).to have_content("Welcome to The Book Explorer")
  end

  scenario "wrong email address" do
    visit("/")
    click_link("Sign Up")
    fill_in "user[email]", with: "usertwo@@gmail.com"
    click_button "Signup"
    expect(page).to have_content("Email is invalid")
  end

  scenario "return error if no password is inserted" do
    visit("/")
    click_link("Sign Up")
    fill_in "user[email]", with: "userone@gmail.com"
    click_button "Signup"
    expect(page).to have_content("Password can't be blank")
  end

  scenario "email is already in use" do
    visit("/")
    click_link("Sign Up")
    fill_in "user[email]", with: "userone@gmail.com"
    fill_in "user[password]", with: "secret"
    fill_in "user[password_confirmation]", with: "secret"
    click_button("Signup")
    visit("/")
    click_link("Sign Up")
    fill_in "user[email]", with: "userone@gmail.com"
    fill_in "user[password]", with: "secret"
    fill_in "user[password_confirmation]", with: "secret"
    click_button("Signup")
    expect(page).to have_content("Email has already been taken")
  end
end
