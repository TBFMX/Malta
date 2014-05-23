require 'test_helper'

class JuiceweeksControllerTest < ActionController::TestCase
  setup do
    @juiceweek = juiceweeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juiceweeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create juiceweek" do
    assert_difference('Juiceweek.count') do
      post :create, juiceweek: { date: @juiceweek.date, juice_id: @juiceweek.juice_id, juicer_id: @juiceweek.juicer_id }
    end

    assert_redirected_to juiceweek_path(assigns(:juiceweek))
  end

  test "should show juiceweek" do
    get :show, id: @juiceweek
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @juiceweek
    assert_response :success
  end

  test "should update juiceweek" do
    patch :update, id: @juiceweek, juiceweek: { date: @juiceweek.date, juice_id: @juiceweek.juice_id, juicer_id: @juiceweek.juicer_id }
    assert_redirected_to juiceweek_path(assigns(:juiceweek))
  end

  test "should destroy juiceweek" do
    assert_difference('Juiceweek.count', -1) do
      delete :destroy, id: @juiceweek
    end

    assert_redirected_to juiceweeks_path
  end
end
