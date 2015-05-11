require 'test_helper'

class MilitaryHistoriesControllerTest < ActionController::TestCase
  setup do
    @military_history = military_histories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:military_histories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create military_history" do
    assert_difference('MilitaryHistory.count') do
      post :create, military_history: { _number: @military_history._number, active_or_reserve: @military_history.active_or_reserve, branch_of_service: @military_history.branch_of_service, military_contact_name: @military_history.military_contact_name, military_contact_phone: @military_history.military_contact_phone, notes: @military_history.notes, pension_or_benefits_phone: @military_history.pension_or_benefits_phone, pension_qualified?: @military_history.pension_qualified?, years_of_service: @military_history.years_of_service }
    end

    assert_redirected_to military_history_path(assigns(:military_history))
  end

  test "should show military_history" do
    get :show, id: @military_history
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @military_history
    assert_response :success
  end

  test "should update military_history" do
    put :update, id: @military_history, military_history: { _number: @military_history._number, active_or_reserve: @military_history.active_or_reserve, branch_of_service: @military_history.branch_of_service, military_contact_name: @military_history.military_contact_name, military_contact_phone: @military_history.military_contact_phone, notes: @military_history.notes, pension_or_benefits_phone: @military_history.pension_or_benefits_phone, pension_qualified?: @military_history.pension_qualified?, years_of_service: @military_history.years_of_service }
    assert_redirected_to military_history_path(assigns(:military_history))
  end

  test "should destroy military_history" do
    assert_difference('MilitaryHistory.count', -1) do
      delete :destroy, id: @military_history
    end

    assert_redirected_to military_histories_path
  end
end
