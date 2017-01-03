require 'test_helper'

class ApartmentsControllerTest < ActionController::TestCase
  setup do
    @apartment = apartments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apartments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apartment" do
    assert_difference('Apartment.count') do
      post :create, apartment: { address_line1: @apartment.address_line1, address_line2: @apartment.address_line2, address_postcode: @apartment.address_postcode, address_state: @apartment.address_state, address_suburb: @apartment.address_suburb, bathrooms: @apartment.bathrooms, bedrooms: @apartment.bedrooms, description: @apartment.description, gym: @apartment.gym, parking: @apartment.parking, price: @apartment.price }
    end

    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should show apartment" do
    get :show, id: @apartment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @apartment
    assert_response :success
  end

  test "should update apartment" do
    patch :update, id: @apartment, apartment: { address_line1: @apartment.address_line1, address_line2: @apartment.address_line2, address_postcode: @apartment.address_postcode, address_state: @apartment.address_state, address_suburb: @apartment.address_suburb, bathrooms: @apartment.bathrooms, bedrooms: @apartment.bedrooms, description: @apartment.description, gym: @apartment.gym, parking: @apartment.parking, price: @apartment.price }
    assert_redirected_to apartment_path(assigns(:apartment))
  end

  test "should destroy apartment" do
    assert_difference('Apartment.count', -1) do
      delete :destroy, id: @apartment
    end

    assert_redirected_to apartments_path
  end
end
