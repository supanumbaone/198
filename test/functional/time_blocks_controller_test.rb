require 'test_helper'

class TimeBlocksControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_show
    get :show, :id => TimeBlock.first
    assert_template 'show'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    TimeBlock.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    TimeBlock.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to time_block_url(assigns(:time_block))
  end

  def test_edit
    get :edit, :id => TimeBlock.first
    assert_template 'edit'
  end

  def test_update_invalid
    TimeBlock.any_instance.stubs(:valid?).returns(false)
    put :update, :id => TimeBlock.first
    assert_template 'edit'
  end

  def test_update_valid
    TimeBlock.any_instance.stubs(:valid?).returns(true)
    put :update, :id => TimeBlock.first
    assert_redirected_to time_block_url(assigns(:time_block))
  end

  def test_destroy
    time_block = TimeBlock.first
    delete :destroy, :id => time_block
    assert_redirected_to time_blocks_url
    assert !TimeBlock.exists?(time_block.id)
  end
end
