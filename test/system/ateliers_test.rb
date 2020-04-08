require "application_system_test_case"

class AteliersTest < ApplicationSystemTestCase
  setup do
    @atelier = ateliers(:one)
  end

  test "visiting the index" do
    visit ateliers_url
    assert_selector "h1", text: "Ateliers"
  end

  test "creating a Atelier" do
    visit ateliers_url
    click_on "New Atelier"

    fill_in "Description", with: @atelier.description
    fill_in "Max age", with: @atelier.max_age
    fill_in "Media", with: @atelier.media
    fill_in "Min age", with: @atelier.min_age
    fill_in "Name", with: @atelier.name
    fill_in "Slots", with: @atelier.slots
    click_on "Create Atelier"

    assert_text "Atelier was successfully created"
    click_on "Back"
  end

  test "updating a Atelier" do
    visit ateliers_url
    click_on "Edit", match: :first

    fill_in "Description", with: @atelier.description
    fill_in "Max age", with: @atelier.max_age
    fill_in "Media", with: @atelier.media
    fill_in "Min age", with: @atelier.min_age
    fill_in "Name", with: @atelier.name
    fill_in "Slots", with: @atelier.slots
    click_on "Update Atelier"

    assert_text "Atelier was successfully updated"
    click_on "Back"
  end

  test "destroying a Atelier" do
    visit ateliers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Atelier was successfully destroyed"
  end
end
