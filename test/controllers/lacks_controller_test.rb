require 'test_helper'

class LacksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lack = lacks(:one)
  end

  test "should get index" do
    get lacks_url
    assert_response :success
  end

  test "should get new" do
    get new_lack_url
    assert_response :success
  end

  test "should create lack" do
    assert_difference('Lack.count') do
      post lacks_url, params: { lack: { tipodefalta: @lack.tipodefalta } }
    end

    assert_redirected_to lack_url(Lack.last)
  end

  test "should show lack" do
    get lack_url(@lack)
    assert_response :success
  end

  test "should get edit" do
    get edit_lack_url(@lack)
    assert_response :success
  end

  test "should update lack" do
    patch lack_url(@lack), params: { lack: { tipodefalta: @lack.tipodefalta } }
    assert_redirected_to lack_url(@lack)
  end

  test "should destroy lack" do
    assert_difference('Lack.count', -1) do
      delete lack_url(@lack)
    end

    assert_redirected_to lacks_url
  end
end
