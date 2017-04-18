require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get main" do
    get :main
    assert_response :success
  end

  test "should get catalog_item" do
    get :catalog_item
    assert_response :success
  end

end
