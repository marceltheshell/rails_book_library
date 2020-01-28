require 'test_helper'

class CatalogControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get catalog_show_url
    assert_response :success
  end

  test "should get search" do
    get catalog_search_url
    assert_response :success
  end

  test "should get checkout" do
    get catalog_checkout_url
    assert_response :success
  end

end
