require 'test_helper'

class Content::PruebasControllerTest < ActionController::TestCase
  setup do
    @content_prueba = content_pruebas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:content_pruebas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create content_prueba" do
    assert_difference('Content::Prueba.count') do
      post :create, content_prueba: { apellidos: @content_prueba.apellidos, nombre: @content_prueba.nombre }
    end

    assert_redirected_to content_prueba_path(assigns(:content_prueba))
  end

  test "should show content_prueba" do
    get :show, id: @content_prueba
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @content_prueba
    assert_response :success
  end

  test "should update content_prueba" do
    patch :update, id: @content_prueba, content_prueba: { apellidos: @content_prueba.apellidos, nombre: @content_prueba.nombre }
    assert_redirected_to content_prueba_path(assigns(:content_prueba))
  end

  test "should destroy content_prueba" do
    assert_difference('Content::Prueba.count', -1) do
      delete :destroy, id: @content_prueba
    end

    assert_redirected_to content_pruebas_path
  end
end
