require "test_helper"

class SupplierTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supplier_type = supplier_types(:one)
  end

  test "should get index" do
    get supplier_types_url
    assert_response :success
  end

  test "should get new" do
    get new_supplier_type_url
    assert_response :success
  end

  test "should create supplier_type" do
    assert_difference('SupplierType.count') do
      post supplier_types_url, params: { supplier_type: { tipo_proveedor: @supplier_type.tipo_proveedor } }
    end

    assert_redirected_to supplier_type_url(SupplierType.last)
  end

  test "should show supplier_type" do
    get supplier_type_url(@supplier_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_supplier_type_url(@supplier_type)
    assert_response :success
  end

  test "should update supplier_type" do
    patch supplier_type_url(@supplier_type), params: { supplier_type: { tipo_proveedor: @supplier_type.tipo_proveedor } }
    assert_redirected_to supplier_type_url(@supplier_type)
  end

  test "should destroy supplier_type" do
    assert_difference('SupplierType.count', -1) do
      delete supplier_type_url(@supplier_type)
    end

    assert_redirected_to supplier_types_url
  end
end
