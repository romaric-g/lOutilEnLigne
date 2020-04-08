require "application_system_test_case"

class AssosTest < ApplicationSystemTestCase
  setup do
    @asso = assos(:one)
  end

  test "visiting the index" do
    visit assos_url
    assert_selector "h1", text: "Assos"
  end

  test "creating a Asso" do
    visit assos_url
    click_on "New Asso"

    fill_in "Address", with: @asso.address
    fill_in "City", with: @asso.city
    fill_in "Email", with: @asso.email
    fill_in "Lat", with: @asso.lat
    fill_in "Long", with: @asso.long
    fill_in "Members", with: @asso.members
    fill_in "Name", with: @asso.name
    fill_in "Phone", with: @asso.phone
    fill_in "Zipcode", with: @asso.zipcode
    click_on "Create Asso"

    assert_text "Asso was successfully created"
    click_on "Back"
  end

  test "updating a Asso" do
    visit assos_url
    click_on "Edit", match: :first

    fill_in "Address", with: @asso.address
    fill_in "City", with: @asso.city
    fill_in "Email", with: @asso.email
    fill_in "Lat", with: @asso.lat
    fill_in "Long", with: @asso.long
    fill_in "Members", with: @asso.members
    fill_in "Name", with: @asso.name
    fill_in "Phone", with: @asso.phone
    fill_in "Zipcode", with: @asso.zipcode
    click_on "Update Asso"

    assert_text "Asso was successfully updated"
    click_on "Back"
  end

  test "destroying a Asso" do
    visit assos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asso was successfully destroyed"
  end
end
