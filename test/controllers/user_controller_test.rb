require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get login_form" do
    get login_form_url
    assert_response :success
  end

end
