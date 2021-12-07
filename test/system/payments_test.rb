require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "creating a Payment" do
    visit payments_url
    click_on "New Payment"

    fill_in "Fecha pago", with: @payment.fecha_pago
    fill_in "Month", with: @payment.month_id
    fill_in "Monto pago", with: @payment.monto_pago
    fill_in "Motive", with: @payment.motive_id
    fill_in "Payment method", with: @payment.payment_method_id
    fill_in "Saldo acumulado", with: @payment.saldo_acumulado
    fill_in "Total pago", with: @payment.total_pago
    fill_in "User", with: @payment.user_id
    fill_in "Year", with: @payment.year_id
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "updating a Payment" do
    visit payments_url
    click_on "Edit", match: :first

    fill_in "Fecha pago", with: @payment.fecha_pago
    fill_in "Month", with: @payment.month_id
    fill_in "Monto pago", with: @payment.monto_pago
    fill_in "Motive", with: @payment.motive_id
    fill_in "Payment method", with: @payment.payment_method_id
    fill_in "Saldo acumulado", with: @payment.saldo_acumulado
    fill_in "Total pago", with: @payment.total_pago
    fill_in "User", with: @payment.user_id
    fill_in "Year", with: @payment.year_id
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment" do
    visit payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment was successfully destroyed"
  end
end
