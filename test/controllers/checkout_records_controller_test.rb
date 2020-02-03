require 'test_helper'

class CheckoutRecordsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get checkout_records_create_url
    assert_response :success
  end

end
