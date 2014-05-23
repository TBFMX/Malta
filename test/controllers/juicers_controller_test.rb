require 'test_helper'

class JuicersControllerTest < ActionController::TestCase
  setup do
    @juicer = juicers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:juicers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create juicer" do
    assert_difference('Juicer.count') do
      post :create, juicer: { date: @juicer.date, juice_id: @juicer.juice_id, name: @juicer.name }
    end

    assert_redirected_to juicer_path(assigns(:juicer))
  end

  test "should show juicer" do
    get :show, id: @juicer
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @juicer
    assert_response :success
  end

  test "should update juicer" do
    patch :update, id: @juicer, juicer: { date: @juicer.date, juice_id: @juicer.juice_id, name: @juicer.name }
    assert_redirected_to juicer_path(assigns(:juicer))
  end

  test "should destroy juicer" do
    assert_difference('Juicer.count', -1) do
      delete :destroy, id: @juicer
    end

    assert_redirected_to juicers_path
  end
end
