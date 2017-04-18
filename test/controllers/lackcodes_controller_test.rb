require 'test_helper'

class LackcodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lackcode = lackcodes(:one)
  end

  test "should get index" do
    get lackcodes_url
    assert_response :success
  end

  test "should get new" do
    get new_lackcode_url
    assert_response :success
  end

  test "should create lackcode" do
    assert_difference('Lackcode.count') do
      post lackcodes_url, params: { lackcode: { lacks_id: @lackcode.lacks_id, name: @lackcode.name } }
    end

    assert_redirected_to lackcode_url(Lackcode.last)
  end

  test "should show lackcode" do
    get lackcode_url(@lackcode)
    assert_response :success
  end

  test "should get edit" do
    get edit_lackcode_url(@lackcode)
    assert_response :success
  end

  test "should update lackcode" do
    patch lackcode_url(@lackcode), params: { lackcode: { lacks_id: @lackcode.lacks_id, name: @lackcode.name } }
    assert_redirected_to lackcode_url(@lackcode)
  end

  test "should destroy lackcode" do
    assert_difference('Lackcode.count', -1) do
      delete lackcode_url(@lackcode)
    end

    assert_redirected_to lackcodes_url
  end
end
