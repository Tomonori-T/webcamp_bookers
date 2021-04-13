require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get books" do
    get home_books_url
    assert_response :success
  end

end
