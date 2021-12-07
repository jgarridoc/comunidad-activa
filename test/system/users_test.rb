require "application_system_test_case"

class UsersTest < ApplicationSystemTestCase
  setup do
    @user = users(:one)
  end

  test "visiting the index" do
    visit users_url
    assert_selector "h1", text: "Users"
  end

  test "creating a User" do
    visit users_url
    click_on "New User"

    fill_in "Apellido 1", with: @user.apellido_1
    fill_in "Apellido 2", with: @user.apellido_2
    fill_in "Clave", with: @user.clave
    fill_in "Correo", with: @user.correo
    fill_in "Fee", with: @user.fee_id
    fill_in "Nombre", with: @user.nombre
    fill_in "Phone", with: @user.phone_id
    fill_in "Role", with: @user.role_id
    fill_in "Rut", with: @user.rut
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit users_url
    click_on "Edit", match: :first

    fill_in "Apellido 1", with: @user.apellido_1
    fill_in "Apellido 2", with: @user.apellido_2
    fill_in "Clave", with: @user.clave
    fill_in "Correo", with: @user.correo
    fill_in "Fee", with: @user.fee_id
    fill_in "Nombre", with: @user.nombre
    fill_in "Phone", with: @user.phone_id
    fill_in "Role", with: @user.role_id
    fill_in "Rut", with: @user.rut
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
