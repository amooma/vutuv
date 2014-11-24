require 'test_helper'

class MeasurementUnitsControllerTest < ActionController::TestCase
  setup do
    @measurement_unit = measurement_units(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:measurement_units)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create measurement_unit" do
    assert_difference('MeasurementUnit.count') do
      post :create, measurement_unit: { name: @measurement_unit.name }
    end

    assert_redirected_to measurement_unit_path(assigns(:measurement_unit))
  end

  test "should show measurement_unit" do
    get :show, id: @measurement_unit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @measurement_unit
    assert_response :success
  end

  test "should update measurement_unit" do
    patch :update, id: @measurement_unit, measurement_unit: { name: @measurement_unit.name }
    assert_redirected_to measurement_unit_path(assigns(:measurement_unit))
  end

  test "should destroy measurement_unit" do
    assert_difference('MeasurementUnit.count', -1) do
      delete :destroy, id: @measurement_unit
    end

    assert_redirected_to measurement_units_path
  end
end
