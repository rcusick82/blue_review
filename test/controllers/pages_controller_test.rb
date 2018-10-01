require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get about" do
    get pages_about_url
    assert_response :success
  end

  test "should get partners" do
    get pages_partners_url
    assert_response :success
  end

  test "should get search" do
    get pages_search_url
    assert_response :success
  end

  test "should get results" do
    get pages_results_url
    assert_response :success
  end

end
