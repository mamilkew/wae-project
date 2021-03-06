require 'test_helper'

class HousingDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @housing_detail = housing_details(:one)
  end

  test "should get index" do
    get housing_details_url
    assert_response :success
  end

  test "should get new" do
    get new_housing_detail_url
    assert_response :success
  end

  test "should create housing_detail" do
    assert_difference('HousingDetail.count') do
      post housing_details_url, params: { housing_detail: { HousingDetailManagement_id: @housing_detail.HousingDetailManagement_id, air_con: @housing_detail.air_con, balcony: @housing_detail.balcony, bathroom: @housing_detail.bathroom, category_name: @housing_detail.category_name, category_no: @housing_detail.category_no, cleaning: @housing_detail.cleaning, description: @housing_detail.description, dorm: @housing_detail.dorm, furniture: @housing_detail.furniture, kitchen: @housing_detail.kitchen, rent: @housing_detail.rent, size: @housing_detail.size } }
    end

    assert_redirected_to housing_detail_url(HousingDetail.last)
  end

  test "should show housing_detail" do
    get housing_detail_url(@housing_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_housing_detail_url(@housing_detail)
    assert_response :success
  end

  test "should update housing_detail" do
    patch housing_detail_url(@housing_detail), params: { housing_detail: { HousingDetailManagement_id: @housing_detail.HousingDetailManagement_id, air_con: @housing_detail.air_con, balcony: @housing_detail.balcony, bathroom: @housing_detail.bathroom, category_name: @housing_detail.category_name, category_no: @housing_detail.category_no, cleaning: @housing_detail.cleaning, description: @housing_detail.description, dorm: @housing_detail.dorm, furniture: @housing_detail.furniture, kitchen: @housing_detail.kitchen, rent: @housing_detail.rent, size: @housing_detail.size } }
    assert_redirected_to housing_detail_url(@housing_detail)
  end

  test "should destroy housing_detail" do
    assert_difference('HousingDetail.count', -1) do
      delete housing_detail_url(@housing_detail)
    end

    assert_redirected_to housing_details_url
  end
end
