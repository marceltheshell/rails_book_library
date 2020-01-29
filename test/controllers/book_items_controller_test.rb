require 'test_helper'

class BookItemsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get book_items_index_url
    assert_response :success
  end

  test "should get show" do
    get book_items_show_url
    assert_response :success
  end

end
