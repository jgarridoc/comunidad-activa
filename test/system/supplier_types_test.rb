require "application_system_test_case"

class SupplierTypesTest < ApplicationSystemTestCase
  setup do
    @supplier_type = supplier_types(:one)
  end

  test "visiting the index" do
    visit supplier_types_url
    assert_selector "h1", text: "Supplier Types"
  end

  test "creating a Supplier type" do
    visit supplier_types_url
    click_on "New Supplier Type"

    fill_in "Tipo proveedor", with: @supplier_type.tipo_proveedor
    click_on "Create Supplier type"

    assert_text "Supplier type was successfully created"
    click_on "Back"
  end

  test "updating a Supplier type" do
    visit supplier_types_url
    click_on "Edit", match: :first

    fill_in "Tipo proveedor", with: @supplier_type.tipo_proveedor
    click_on "Update Supplier type"

    assert_text "Supplier type was successfully updated"
    click_on "Back"
  end

  test "destroying a Supplier type" do
    visit supplier_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supplier type was successfully destroyed"
  end
end
