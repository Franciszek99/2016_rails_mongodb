require 'test_helper'

class EpmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @epm = epms(:one)
  end

  test "should get index" do
    get epms_url
    assert_response :success
  end

  test "should get new" do
    get new_epm_url
    assert_response :success
  end

  test "should create epm" do
    assert_difference('Epm.count') do
      post epms_url, params: { epm: { age: @epm.age, name: @epm.name } }
    end

    assert_redirected_to epm_url(Epm.last)
  end

  test "should show epm" do
    get epm_url(@epm)
    assert_response :success
  end

  test "should get edit" do
    get edit_epm_url(@epm)
    assert_response :success
  end

  test "should update epm" do
    patch epm_url(@epm), params: { epm: { age: @epm.age, name: @epm.name } }
    assert_redirected_to epm_url(@epm)
  end

  test "should destroy epm" do
    assert_difference('Epm.count', -1) do
      delete epm_url(@epm)
    end

    assert_redirected_to epms_url
  end
end
