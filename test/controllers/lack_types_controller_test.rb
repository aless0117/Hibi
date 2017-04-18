require 'test_helper'

class LackTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lack_type = lack_types(:one)
  end

  test "should get index" do
    get lack_types_url
    assert_response :success
  end

  test "should get new" do
    get new_lack_type_url
    assert_response :success
  end

  test "should create lack_type" do
    assert_difference('LackType.count') do
      post lack_types_url, params: { lack_type: { tipodefalta: @lack_type.tipodefalta } }
    end

    assert_redirected_to lack_type_url(LackType.last)
  end

  test "should show lack_type" do
    get lack_type_url(@lack_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_lack_type_url(@lack_type)
    assert_response :success
  end

  test "should update lack_type" do
    patch lack_type_url(@lack_type), params: { lack_type: { tipodefalta: @lack_type.tipodefalta } }
    assert_redirected_to lack_type_url(@lack_type)
  end

  test "should destroy lack_type" do
    assert_difference('LackType.count', -1) do
      delete lack_type_url(@lack_type)
    end

    assert_redirected_to lack_types_url
  end
end
