require 'test_helper'

class LicensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @license = licenses(:one)
  end

  test "should get index" do
    get licenses_url
    assert_response :success
  end

  test "should get new" do
    get new_license_url
    assert_response :success
  end

  test "should create license" do
    assert_difference('License.count') do
      post licenses_url, params: { license: { idProduktu: @license.idProduktu, idSubskrypcji: @license.idSubskrypcji } }
    end

    assert_redirected_to license_url(License.last)
  end

  test "should show license" do
    get license_url(@license)
    assert_response :success
  end

  test "should get edit" do
    get edit_license_url(@license)
    assert_response :success
  end

  test "should update license" do
    patch license_url(@license), params: { license: { idProduktu: @license.idProduktu, idSubskrypcji: @license.idSubskrypcji } }
    assert_redirected_to license_url(@license)
  end

  test "should destroy license" do
    assert_difference('License.count', -1) do
      delete license_url(@license)
    end

    assert_redirected_to licenses_url
  end
end
