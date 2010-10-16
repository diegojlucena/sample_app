require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should have the rigth title" do
    get :new
    assert_select 'title', "Ruby on Rails Tutorial Sample App | Sign up"
  end
  
  test "should have sign up page at '/signup'" do
    assert_routing '/signup', :controller => 'users', :action => 'new'
  end
end
