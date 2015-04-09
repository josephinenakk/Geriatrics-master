require 'test_helper'

class LoansCreditCardsControllerTest < ActionController::TestCase
  setup do
    @loans_credit_card = loans_credit_cards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loans_credit_cards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create loans_credit_card" do
    assert_difference('LoansCreditCard.count') do
      post :create, loans_credit_card: { account_Number: @loans_credit_card.account_Number, account_Type: @loans_credit_card.account_Type, institution_Information: @loans_credit_card.institution_Information }
    end

    assert_redirected_to loans_credit_card_path(assigns(:loans_credit_card))
  end

  test "should show loans_credit_card" do
    get :show, id: @loans_credit_card
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @loans_credit_card
    assert_response :success
  end

  test "should update loans_credit_card" do
    put :update, id: @loans_credit_card, loans_credit_card: { account_Number: @loans_credit_card.account_Number, account_Type: @loans_credit_card.account_Type, institution_Information: @loans_credit_card.institution_Information }
    assert_redirected_to loans_credit_card_path(assigns(:loans_credit_card))
  end

  test "should destroy loans_credit_card" do
    assert_difference('LoansCreditCard.count', -1) do
      delete :destroy, id: @loans_credit_card
    end

    assert_redirected_to loans_credit_cards_path
  end
end
