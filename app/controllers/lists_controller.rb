class ListsController < ApplicationController


  before_filter :require_login
  before_filter :require_list, except: [:index, :new, :create]

  def index
    @lists = current_user.lists.order('lists.created_at DESC').all
  end
  
  def new
    @list = current_user.lists.build
  end

  def edit
  end

  def update
    if @list.update_attributes params[:list]
      redirect_to [:lists], notice: "list updated!"
    else
      render :edit
    end
  end

  def create
    @list = current_user.lists.build params[:list]
    if @list.save
      redirect_to [:lists], notice: "list created!"
    else
      render :new
    end
  end

  def destroy
    @list.destroy
    redirect_to [:lists], notice: "list deleted"
  end

  protected

  def not_authenticated
    redirect_to login_path, :alert => "Please login first."
  end
  def require_list
    @list = current_user.lists.find params[:id]
  end

  def nav_state
    @nav = :lists
  end

end