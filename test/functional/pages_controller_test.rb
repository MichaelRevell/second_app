require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get test" do
    get :test
    assert_response :success
  end

end
