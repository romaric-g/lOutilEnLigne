require 'test_helper'

class AteliersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @atelier = ateliers(:one)
  end

  test "should get index" do
    get ateliers_url
    assert_response :success
  end

  test "should get new" do
    get new_atelier_url
    assert_response :success
  end

  test "should create atelier" do
    assert_difference('Atelier.count') do
      post ateliers_url, params: { atelier: { description: @atelier.description, max_age: @atelier.max_age, media: @atelier.media, min_age: @atelier.min_age, name: @atelier.name, slots: @atelier.slots } }
    end

    assert_redirected_to atelier_url(Atelier.last)
  end

  test "should show atelier" do
    get atelier_url(@atelier)
    assert_response :success
  end

  test "should get edit" do
    get edit_atelier_url(@atelier)
    assert_response :success
  end

  test "should update atelier" do
    patch atelier_url(@atelier), params: { atelier: { description: @atelier.description, max_age: @atelier.max_age, media: @atelier.media, min_age: @atelier.min_age, name: @atelier.name, slots: @atelier.slots } }
    assert_redirected_to atelier_url(@atelier)
  end

  test "should destroy atelier" do
    assert_difference('Atelier.count', -1) do
      delete atelier_url(@atelier)
    end

    assert_redirected_to ateliers_url
  end
end
