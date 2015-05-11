require 'test_helper'

class FuneralArrangementsControllerTest < ActionController::TestCase
  setup do
    @funeral_arrangement = funeral_arrangements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:funeral_arrangements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create funeral_arrangement" do
    assert_difference('FuneralArrangement.count') do
      post :create, funeral_arrangement: { arrangements_or_celebration_of_life_details: @funeral_arrangement.arrangements_or_celebration_of_life_details, contact_name: @funeral_arrangement.contact_name, organization_name: @funeral_arrangement.organization_name, provider_address: @funeral_arrangement.provider_address, provider_email: @funeral_arrangement.provider_email, provider_phone_number: @funeral_arrangement.provider_phone_number }
    end

    assert_redirected_to funeral_arrangement_path(assigns(:funeral_arrangement))
  end

  test "should show funeral_arrangement" do
    get :show, id: @funeral_arrangement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @funeral_arrangement
    assert_response :success
  end

  test "should update funeral_arrangement" do
    put :update, id: @funeral_arrangement, funeral_arrangement: { arrangements_or_celebration_of_life_details: @funeral_arrangement.arrangements_or_celebration_of_life_details, contact_name: @funeral_arrangement.contact_name, organization_name: @funeral_arrangement.organization_name, provider_address: @funeral_arrangement.provider_address, provider_email: @funeral_arrangement.provider_email, provider_phone_number: @funeral_arrangement.provider_phone_number }
    assert_redirected_to funeral_arrangement_path(assigns(:funeral_arrangement))
  end

  test "should destroy funeral_arrangement" do
    assert_difference('FuneralArrangement.count', -1) do
      delete :destroy, id: @funeral_arrangement
    end

    assert_redirected_to funeral_arrangements_path
  end
end
