require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  #tests for home
  
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should have the right title" do
    get :home
    assert_select "title", "Ruby on Rails Tutorial Sample App | Home"
  end

  #end tests for home
  
  #tests for contact
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "contact should have the right title" do
    get :contact
    assert_select 'title', "Ruby on Rails Tutorial Sample App | Contact"
  end

  #end tests for contact

  #tests for about  

  test "should get about" do
    get :about
    assert_response :success
  end

  test "about should have the right title" do
    get :about
    assert_select 'title', "Ruby on Rails Tutorial Sample App | About"
  end

  #end tests form about
end
