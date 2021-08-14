require "test_helper"

class PlayersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get players_index_url
    assert_response :success
  end

  test "should get create" do
    get players_create_url
    assert_response :success
  end

  test "should get new" do
    get players_new_url
    assert_response :success
  end

  test "should get show" do
    get players_show_url
    assert_response :success
  end

  test "should get destroy" do
    get players_destroy_url
    assert_response :success
  end
end
