module UserHelper
  def log_in(user)
    visit login_path

    within("form[action='/login']") do
      fill_in "Full name", with: user.full_name
      fill_in "Email address", with: user.email
      fill_in "Password", with: user.password

      click_on "Log in"
    end
  end
end