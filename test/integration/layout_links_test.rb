require 'integration_test_helper'

class LayoutLinksTest < ActionDispatch::IntegrationTest
  # Replace this with your real tests.
  test "should have the right links on the layout" do
    visit root_path
    click_link "About"
    assert page.has_content?('About Us')
    assert_equal current_path, "/about"
    click_link "Help"
    assert page.has_content?('Help')
    assert_equal current_path, "/help"
    click_link "Contact"
    assert page.has_content?('Contact')
    assert_equal current_path, "/contact"
    click_link "Home"
    assert page.has_content?('Sample App')
    assert_equal current_path, "/"
    click_link "Sign up now!"
    assert page.has_content?('Sign Up')
    assert_equal current_path, "/signup"
  end
end
