require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get profil" do
    get user_profil_url
    assert_response :success
  end

end
