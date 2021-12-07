require "application_system_test_case"

class MotivesTest < ApplicationSystemTestCase
  setup do
    @motive = motives(:one)
  end

  test "visiting the index" do
    visit motives_url
    assert_selector "h1", text: "Motives"
  end

  test "creating a Motive" do
    visit motives_url
    click_on "New Motive"

    fill_in "Motivo", with: @motive.motivo
    click_on "Create Motive"

    assert_text "Motive was successfully created"
    click_on "Back"
  end

  test "updating a Motive" do
    visit motives_url
    click_on "Edit", match: :first

    fill_in "Motivo", with: @motive.motivo
    click_on "Update Motive"

    assert_text "Motive was successfully updated"
    click_on "Back"
  end

  test "destroying a Motive" do
    visit motives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Motive was successfully destroyed"
  end
end
