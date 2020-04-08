require 'test_helper'

class AssosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asso = assos(:one)
  end

  test "should get index" do
    get assos_url
    assert_response :success
  end

  test "should get new" do
    get new_asso_url
    assert_response :success
  end

  test "should create asso" do
    assert_difference('Asso.count') do
      post assos_url, params: { asso: { address: @asso.address, city: @asso.city, email: @asso.email, lat: @asso.lat, long: @asso.long, members: @asso.members, name: @asso.name, phone: @asso.phone, zipcode: @asso.zipcode } }
    end

    assert_redirected_to asso_url(Asso.last)
  end

  test "should show asso" do
    get asso_url(@asso)
    assert_response :success
  end

  test "should get edit" do
    get edit_asso_url(@asso)
    assert_response :success
  end

  test "should update asso" do
    patch asso_url(@asso), params: { asso: { address: @asso.address, city: @asso.city, email: @asso.email, lat: @asso.lat, long: @asso.long, members: @asso.members, name: @asso.name, phone: @asso.phone, zipcode: @asso.zipcode } }
    assert_redirected_to asso_url(@asso)
  end

  test "should destroy asso" do
    assert_difference('Asso.count', -1) do
      delete asso_url(@asso)
    end

    assert_redirected_to assos_url
  end
end
