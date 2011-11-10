require 'test_helper'

class TeachersClassroomsControllerTest < ActionController::TestCase
  setup do
    @teachers_classroom = teachers_classrooms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachers_classrooms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teachers_classroom" do
    assert_difference('TeachersClassroom.count') do
      post :create, teachers_classroom: @teachers_classroom.attributes
    end

    assert_redirected_to teachers_classroom_path(assigns(:teachers_classroom))
  end

  test "should show teachers_classroom" do
    get :show, id: @teachers_classroom.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @teachers_classroom.to_param
    assert_response :success
  end

  test "should update teachers_classroom" do
    put :update, id: @teachers_classroom.to_param, teachers_classroom: @teachers_classroom.attributes
    assert_redirected_to teachers_classroom_path(assigns(:teachers_classroom))
  end

  test "should destroy teachers_classroom" do
    assert_difference('TeachersClassroom.count', -1) do
      delete :destroy, id: @teachers_classroom.to_param
    end

    assert_redirected_to teachers_classrooms_path
  end
end
