require 'test_helper'

class CartsControllerTest < ActionDispatch::IntegrationTest
<<<<<<< HEAD
  # test "the truth" do
  #   assert true
  # end
end
=======
  test "should get show" do
    get carts_show_url
    assert_response :success
  end

end
>>>>>>> origin/aws-master
