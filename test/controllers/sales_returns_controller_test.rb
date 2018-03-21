require 'test_helper'

class SalesReturnsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sales_returns_index_url
    assert_response :success
  end

  test "should get new" do
    get sales_returns_new_url
    assert_response :success
  end

  test "should get edit" do
    get sales_returns_edit_url
    assert_response :success
  end

  test "should get show" do
    get sales_returns_show_url
    assert_response :success
  end

end
