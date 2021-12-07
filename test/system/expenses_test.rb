require "application_system_test_case"

class ExpensesTest < ApplicationSystemTestCase
  setup do
    @expense = expenses(:one)
  end

  test "visiting the index" do
    visit expenses_url
    assert_selector "h1", text: "Expenses"
  end

  test "creating a Expense" do
    visit expenses_url
    click_on "New Expense"

    fill_in "Document", with: @expense.document_id
    fill_in "Fecha gasto", with: @expense.fecha_gasto
    fill_in "Month", with: @expense.month_id
    fill_in "Monto", with: @expense.monto
    fill_in "Motive", with: @expense.motive_id
    fill_in "Year", with: @expense.year_id
    click_on "Create Expense"

    assert_text "Expense was successfully created"
    click_on "Back"
  end

  test "updating a Expense" do
    visit expenses_url
    click_on "Edit", match: :first

    fill_in "Document", with: @expense.document_id
    fill_in "Fecha gasto", with: @expense.fecha_gasto
    fill_in "Month", with: @expense.month_id
    fill_in "Monto", with: @expense.monto
    fill_in "Motive", with: @expense.motive_id
    fill_in "Year", with: @expense.year_id
    click_on "Update Expense"

    assert_text "Expense was successfully updated"
    click_on "Back"
  end

  test "destroying a Expense" do
    visit expenses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expense was successfully destroyed"
  end
end
