require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get our_location" do
    get :our_location
    assert_response :success
  end

end
