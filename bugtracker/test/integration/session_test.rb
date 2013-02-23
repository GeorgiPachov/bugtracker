require 'test_helper'
require "capybara/rails"

class SessionTest < ActionController::IntegrationTest
  include Capybara::DSL

  fixtures :users

  setup do
    @user = users(:one)
    @user.password = "testtest"
  end

  test "checks homepage" do
  # login via https
    get "/"
    assert_response :success
  end

  test "opens sign in page" do
    get "/users/sign_in"
    assert_response :success
  end

  test "opens sign up page" do
    get "/users/sign_up"
    assert_response :success
  end

  test "login success" do
    login(@user)
    assert page.has_content?("successfully")
    
  end

  test "login fail" do
    user = @user.clone
    user.password = 'wrong password'
    user = login(user)
    assert user.nil?
    puts page.inspect
  end

  private

  def login(user)
    visit "/"
    click_link_or_button('Sign in!')
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_link_or_button('Sign in!')
  end
end  