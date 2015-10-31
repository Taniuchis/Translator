require 'test_helper'

class SpanishWordsControllerTest < ActionController::TestCase
  setup do
    @spanish_word = spanish_words(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spanish_words)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spanish_word" do
    assert_difference('SpanishWord.count') do
      post :create, spanish_word: { english_word_id: @spanish_word.english_word_id, kind: @spanish_word.kind, name: @spanish_word.name }
    end

    assert_redirected_to spanish_word_path(assigns(:spanish_word))
  end

  test "should show spanish_word" do
    get :show, id: @spanish_word
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spanish_word
    assert_response :success
  end

  test "should update spanish_word" do
    patch :update, id: @spanish_word, spanish_word: { english_word_id: @spanish_word.english_word_id, kind: @spanish_word.kind, name: @spanish_word.name }
    assert_redirected_to spanish_word_path(assigns(:spanish_word))
  end

  test "should destroy spanish_word" do
    assert_difference('SpanishWord.count', -1) do
      delete :destroy, id: @spanish_word
    end

    assert_redirected_to spanish_words_path
  end
end
