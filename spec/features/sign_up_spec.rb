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
end