require "application_system_test_case"

class MetiersTest < ApplicationSystemTestCase
  setup do
    @metier = metiers(:one)
  end

  test "visiting the index" do
    visit metiers_url
    assert_selector "h1", text: "Metiers"
  end

  test "creating a Metier" do
    visit metiers_url
    click_on "New Metier"

    fill_in "Explanation", with: @metier.explanation
    fill_in "Media", with: @metier.media
    fill_in "Name", with: @metier.name
    fill_in "Training", with: @metier.training
    click_on "Create Metier"

    assert_text "Metier was successfully created"
    click_on "Back"
  end

  test "updating a Metier" do
    visit metiers_url
    click_on "Edit", match: :first

    fill_in "Explanation", with: @metier.explanation
    fill_in "Media", with: @metier.media
    fill_in "Name", with: @metier.name
    fill_in "Training", with: @metier.training
    click_on "Update Metier"

    assert_text "Metier was successfully updated"
    click_on "Back"
  end

  test "destroying a Metier" do
    visit metiers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Metier was successfully destroyed"
  end
end
