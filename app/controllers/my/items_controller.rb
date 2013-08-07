class My::ItemsController < ApplicationController
  
	before_filter :require_login
	before_filter :require_item
  	
  def index
  	@items = current_user.items.all
   # @items = current_user.items.all
  end

  def show
  	@item = current_user.items.find(params[:item])
  end

    protected

  def require_item
    @item = current_user.items.find params[:id]
  end
end
