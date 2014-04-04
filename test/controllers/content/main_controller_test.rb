require 'test_helper'

class Content::MainControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
