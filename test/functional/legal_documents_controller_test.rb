require 'test_helper'

class LegalDocumentsControllerTest < ActionController::TestCase
  setup do
    @legal_document = legal_documents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:legal_documents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create legal_document" do
    assert_difference('LegalDocument.count') do
      post :create, legal_document: { do_ot_resuscitate: @legal_document.do_ot_resuscitate, health_care_directive: @legal_document.health_care_directive, letter_of_authorization: @legal_document.letter_of_authorization, location_of_original: @legal_document.location_of_original, pension_papers: @legal_document.pension_papers, power_of_attorney: @legal_document.power_of_attorney, trust: @legal_document.trust, will: @legal_document.will, wishes: @legal_document.wishes }
    end

    assert_redirected_to legal_document_path(assigns(:legal_document))
  end

  test "should show legal_document" do
    get :show, id: @legal_document
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @legal_document
    assert_response :success
  end

  test "should update legal_document" do
    put :update, id: @legal_document, legal_document: { do_ot_resuscitate: @legal_document.do_ot_resuscitate, health_care_directive: @legal_document.health_care_directive, letter_of_authorization: @legal_document.letter_of_authorization, location_of_original: @legal_document.location_of_original, pension_papers: @legal_document.pension_papers, power_of_attorney: @legal_document.power_of_attorney, trust: @legal_document.trust, will: @legal_document.will, wishes: @legal_document.wishes }
    assert_redirected_to legal_document_path(assigns(:legal_document))
  end

  test "should destroy legal_document" do
    assert_difference('LegalDocument.count', -1) do
      delete :destroy, id: @legal_document
    end

    assert_redirected_to legal_documents_path
  end
end
