require 'test_helper'

class DelaysControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delay = delays(:one)
  end

  test "should get index" do
    get delays_url
    assert_response :success
  end

  test "should get new" do
    get new_delay_url
    assert_response :success
  end

  test "should create delay" do
    assert_difference('Delay.count') do
      post delays_url, params: { delay: { student_id: @delay.student_id, subjectstoClassroom_id: @delay.subjectstoClassroom_id } }
    end

    assert_redirected_to delay_url(Delay.last)
  end

  test "should show delay" do
    get delay_url(@delay)
    assert_response :success
  end

  test "should get edit" do
    get edit_delay_url(@delay)
    assert_response :success
  end

  test "should update delay" do
    patch delay_url(@delay), params: { delay: { student_id: @delay.student_id, subjectstoClassroom_id: @delay.subjectstoClassroom_id } }
    assert_redirected_to delay_url(@delay)
  end

  test "should destroy delay" do
    assert_difference('Delay.count', -1) do
      delete delay_url(@delay)
    end

    assert_redirected_to delays_url
  end
end
