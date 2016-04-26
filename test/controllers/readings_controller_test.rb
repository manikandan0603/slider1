require 'test_helper'

class ReadingsControllerTest < ActionController::TestCase
  setup do
    @reading = readings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:readings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reading" do
    assert_difference('Reading.count') do
      post :create, reading: { main_slider_values: @reading.main_slider_values, s10: @reading.s10, s1: @reading.s1, s2: @reading.s2, s3: @reading.s3, s4: @reading.s4, s5: @reading.s5, s6: @reading.s6, s7: @reading.s7, s8: @reading.s8, s9: @reading.s9, user_id: @reading.user_id }
    end

    assert_redirected_to reading_path(assigns(:reading))
  end

  test "should show reading" do
    get :show, id: @reading
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @reading
    assert_response :success
  end

  test "should update reading" do
    patch :update, id: @reading, reading: { main_slider_values: @reading.main_slider_values, s10: @reading.s10, s1: @reading.s1, s2: @reading.s2, s3: @reading.s3, s4: @reading.s4, s5: @reading.s5, s6: @reading.s6, s7: @reading.s7, s8: @reading.s8, s9: @reading.s9, user_id: @reading.user_id }
    assert_redirected_to reading_path(assigns(:reading))
  end

  test "should destroy reading" do
    assert_difference('Reading.count', -1) do
      delete :destroy, id: @reading
    end

    assert_redirected_to readings_path
  end
end
