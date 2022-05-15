require "test_helper"

class SigningsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get signings_new_url
    assert_response :success
  end

  test "should get create" do
    get signings_create_url
    assert_response :success
  end

  test "should get destroy" do
    get signings_destroy_url
    assert_response :success
  end
end
