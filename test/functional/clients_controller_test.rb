require 'test_helper'

class ClientsControllerTest < ActionController::TestCase
  setup do
    @client = clients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client" do
    assert_difference('Client.count') do
      post :create, client: { allergies_info: @client.allergies_info, blood_type: @client.blood_type, date_of_birth: @client.date_of_birth, details_DNR: @client.details_DNR, firstname: @client.firstname, lastname: @client.lastname, name_healthcare_proxy: @client.name_healthcare_proxy, organization: @client.organization, phone_no: @client.phone_no }
    end

    assert_redirected_to client_path(assigns(:client))
  end

  test "should show client" do
    get :show, id: @client
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client
    assert_response :success
  end

  test "should update client" do
    put :update, id: @client, client: { allergies_info: @client.allergies_info, blood_type: @client.blood_type, date_of_birth: @client.date_of_birth, details_DNR: @client.details_DNR, firstname: @client.firstname, lastname: @client.lastname, name_healthcare_proxy: @client.name_healthcare_proxy, organization: @client.organization, phone_no: @client.phone_no }
    assert_redirected_to client_path(assigns(:client))
  end

  test "should destroy client" do
    assert_difference('Client.count', -1) do
      delete :destroy, id: @client
    end

    assert_redirected_to clients_path
  end
end
