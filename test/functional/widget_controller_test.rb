require 'test_helper'

class WidgetControllerTest < ActionController::TestCase
  test "should get categorys" do
    get :categorys
    assert_response :success
  end

end
