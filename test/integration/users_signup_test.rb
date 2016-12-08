require 'test_helper'

class UsersSignupTest < ActionDispatch::IntegrationTest
  test "invalid signup information" do
    get signup_path
    assert_no_difference 'User.count' do
      post signup_path, params: { user: { name:  "",
                                          email: "user@invalid",
                                          password:              "foo",
                                          password_confirmation: "bar" } }
    end

    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert-danger.alert'
    assert_select 'form[action="/signup"]'
  end

# test "valid signup information" do                                ###Let's try back to it later, ignore
#    get signup_path
#    assert_difference 'User.count', 1 do
#      post signup_path, params: { user: { name:  "Andriy",
#                                          email: "skipenko@gmail.com",
#                                          password:              "qwerty",
#                                          password_confirmation: "qwerty" } }
#    end
#    follow_redirect!
#    assert_template 'users/show'
#    assert is_logged_in?
#  end

end
