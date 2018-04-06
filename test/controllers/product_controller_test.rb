require 'test_helper'

class ProductControllerTest < ActionDispatch::IntegrationTest
  test "should get category" do
    get product_category_url
    assert_response :success
  end

end
