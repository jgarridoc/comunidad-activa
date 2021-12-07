require "test_helper"

class UnitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @unit = units(:one)
  end

  test "should get index" do
    get units_url
    assert_response :success
  end

  test "should get new" do
    get new_unit_url
    assert_response :success
  end

  test "should create unit" do
    assert_difference('Unit.count') do
      post units_url, params: { unit: { address_id: @unit.address_id, city_id: @unit.city_id, commune_id: @unit.commune_id, region_id: @unit.region_id, tipo: @unit.tipo, user_id: @unit.user_id, zip_code_id: @unit.zip_code_id } }
    end

    assert_redirected_to unit_url(Unit.last)
  end

  test "should show unit" do
    get unit_url(@unit)
    assert_response :success
  end

  test "should get edit" do
    get edit_unit_url(@unit)
    assert_response :success
  end

  test "should update unit" do
    patch unit_url(@unit), params: { unit: { address_id: @unit.address_id, city_id: @unit.city_id, commune_id: @unit.commune_id, region_id: @unit.region_id, tipo: @unit.tipo, user_id: @unit.user_id, zip_code_id: @unit.zip_code_id } }
    assert_redirected_to unit_url(@unit)
  end

  test "should destroy unit" do
    assert_difference('Unit.count', -1) do
      delete unit_url(@unit)
    end

    assert_redirected_to units_url
  end
end
