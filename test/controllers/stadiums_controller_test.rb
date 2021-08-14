require "test_helper"

class StadiumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stadiums_index_url
    assert_response :success
  end

  test "should get create" do
    get stadiums_create_url
    assert_response :success
  end

  test "should get new" do
    get stadiums_new_url
    assert_response :success
  end

  test "should get show" do
    get stadiums_show_url
    assert_response :success
  end

  test "should get destroy" do
    get stadiums_destroy_url
    assert_response :success
  end
end
