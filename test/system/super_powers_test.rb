require "application_system_test_case"

class SuperPowersTest < ApplicationSystemTestCase
  setup do
    @super_power = super_powers(:one)
  end

  test "visiting the index" do
    visit super_powers_url
    assert_selector "h1", text: "Super Powers"
  end

  test "creating a Super power" do
    visit super_powers_url
    click_on "New Super Power"

    fill_in "Description", with: @super_power.description
    fill_in "Name", with: @super_power.name
    fill_in "Super hero", with: @super_power.super_hero_id
    click_on "Create Super power"

    assert_text "Super power was successfully created"
    click_on "Back"
  end

  test "updating a Super power" do
    visit super_powers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @super_power.description
    fill_in "Name", with: @super_power.name
    fill_in "Super hero", with: @super_power.super_hero_id
    click_on "Update Super power"

    assert_text "Super power was successfully updated"
    click_on "Back"
  end

  test "destroying a Super power" do
    visit super_powers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Super power was successfully destroyed"
  end
end
