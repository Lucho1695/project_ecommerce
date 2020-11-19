require "application_system_test_case"

class historialsTest < ApplicationSystemTestCase
  setup do
    @histroal = historials(:one)
  end

  test "visiting the index" do
    visit historials_url
    assert_selector "h1", text: "historials"
  end

  test "creating a Histroal" do
    visit historials_url
    click_on "New Histroal"

    fill_in "Order", with: @histroal.order_id
    click_on "Create Histroal"

    assert_text "Histroal was successfully created"
    click_on "Back"
  end

  test "updating a Histroal" do
    visit historials_url
    click_on "Edit", match: :first

    fill_in "Order", with: @histroal.order_id
    click_on "Update Histroal"

    assert_text "Histroal was successfully updated"
    click_on "Back"
  end

  test "destroying a Histroal" do
    visit historials_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Histroal was successfully destroyed"
  end
end
