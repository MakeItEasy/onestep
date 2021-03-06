module Utilities

  def sign_in(user)
    visit login_path
    fill_in "login",    with: user.name
    fill_in "password", with: user.password
    click_button "登录"
  end

  def signup_with_attributes(name: "haoqi", email: "haoqi@cat.com", password: "123456")
    fill_in "user[name]", :with => name
    fill_in "user[email]", :with => email
    fill_in "user[password]", :with => password
    click_button '免费注册'
  end

end
