require 'test_helper'

class DadabadasControllerTest < ActionController::TestCase
  setup do
    @dadabada = dadabadas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dadabadas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dadabada" do
    assert_difference('Dadabada.count') do
      post :create, dadabada: { alphanu: @dadabada.alphanu, files: @dadabada.files, floats: @dadabada.floats, numbers: @dadabada.numbers }
    end

    assert_redirected_to dadabada_path(assigns(:dadabada))
  end

  test "should show dadabada" do
    get :show, id: @dadabada
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dadabada
    assert_response :success
  end

  test "should update dadabada" do
    patch :update, id: @dadabada, dadabada: { alphanu: @dadabada.alphanu, files: @dadabada.files, floats: @dadabada.floats, numbers: @dadabada.numbers }
    assert_redirected_to dadabada_path(assigns(:dadabada))
  end

  test "should destroy dadabada" do
    assert_difference('Dadabada.count', -1) do
      delete :destroy, id: @dadabada
    end

    assert_redirected_to dadabadas_path
  end
end
