require "test_helper"

class TactisControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tactis_new_url
    assert_response :success
  end

  test "should get create" do
    get tactis_create_url
    assert_response :success
  end

  test "should get edit" do
    get tactis_edit_url
    assert_response :success
  end

  test "should get update" do
    get tactis_update_url
    assert_response :success
  end

  test "should get destroy" do
    get tactis_destroy_url
    assert_response :success
  end
end
