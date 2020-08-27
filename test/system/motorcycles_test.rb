require "application_system_test_case"

class MotorcyclesTest < ApplicationSystemTestCase
  setup do
    @motorcycle = motorcycles(:one)
  end

  test "visiting the index" do
    visit motorcycles_url
    assert_selector "h1", text: "Motorcycles"
  end

  test "creating a Motorcycle" do
    visit motorcycles_url
    click_on "New Motorcycle"

    fill_in "Color", with: @motorcycle.color
    fill_in "Engine", with: @motorcycle.engine
    fill_in "Gearbox", with: @motorcycle.gearbox
    fill_in "Plate", with: @motorcycle.plate
    fill_in "Starter system", with: @motorcycle.starter_system
    click_on "Create Motorcycle"

    assert_text "Motorcycle was successfully created"
    click_on "Back"
  end

  test "updating a Motorcycle" do
    visit motorcycles_url
    click_on "Edit", match: :first

    fill_in "Color", with: @motorcycle.color
    fill_in "Engine", with: @motorcycle.engine
    fill_in "Gearbox", with: @motorcycle.gearbox
    fill_in "Plate", with: @motorcycle.plate
    fill_in "Starter system", with: @motorcycle.starter_system
    click_on "Update Motorcycle"

    assert_text "Motorcycle was successfully updated"
    click_on "Back"
  end

  test "destroying a Motorcycle" do
    visit motorcycles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Motorcycle was successfully destroyed"
  end
end
