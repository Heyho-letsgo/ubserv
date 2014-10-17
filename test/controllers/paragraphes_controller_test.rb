require 'test_helper'

class ParagraphesControllerTest < ActionController::TestCase
  setup do
    @paragraphe = paragraphes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paragraphes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paragraphe" do
    assert_difference('Paragraphe.count') do
      post :create, paragraphe: { corps: @paragraphe.corps }
    end

    assert_redirected_to paragraphe_path(assigns(:paragraphe))
  end

  test "should show paragraphe" do
    get :show, id: @paragraphe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paragraphe
    assert_response :success
  end

  test "should update paragraphe" do
    patch :update, id: @paragraphe, paragraphe: { corps: @paragraphe.corps }
    assert_redirected_to paragraphe_path(assigns(:paragraphe))
  end

  test "should destroy paragraphe" do
    assert_difference('Paragraphe.count', -1) do
      delete :destroy, id: @paragraphe
    end

    assert_redirected_to paragraphes_path
  end
end
