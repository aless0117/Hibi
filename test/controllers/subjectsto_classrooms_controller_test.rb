require 'test_helper'

class SubjectstoClassroomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subjectsto_classroom = subjectsto_classrooms(:one)
  end

  test "should get index" do
    get subjectsto_classrooms_url
    assert_response :success
  end

  test "should get new" do
    get new_subjectsto_classroom_url
    assert_response :success
  end

  test "should create subjectsto_classroom" do
    assert_difference('SubjectstoClassroom.count') do
      post subjectsto_classrooms_url, params: { subjectsto_classroom: { classroom_id: @subjectsto_classroom.classroom_id, schedule_id: @subjectsto_classroom.schedule_id, subject_id: @subjectsto_classroom.subject_id } }
    end

    assert_redirected_to subjectsto_classroom_url(SubjectstoClassroom.last)
  end

  test "should show subjectsto_classroom" do
    get subjectsto_classroom_url(@subjectsto_classroom)
    assert_response :success
  end

  test "should get edit" do
    get edit_subjectsto_classroom_url(@subjectsto_classroom)
    assert_response :success
  end

  test "should update subjectsto_classroom" do
    patch subjectsto_classroom_url(@subjectsto_classroom), params: { subjectsto_classroom: { classroom_id: @subjectsto_classroom.classroom_id, schedule_id: @subjectsto_classroom.schedule_id, subject_id: @subjectsto_classroom.subject_id } }
    assert_redirected_to subjectsto_classroom_url(@subjectsto_classroom)
  end

  test "should destroy subjectsto_classroom" do
    assert_difference('SubjectstoClassroom.count', -1) do
      delete subjectsto_classroom_url(@subjectsto_classroom)
    end

    assert_redirected_to subjectsto_classrooms_url
  end
end
