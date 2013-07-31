class ItemsController < ApplicationController
  def new
   # @item = @list.items.build
  end

  def show
    
  end

  def create
  end

  def edit
    if @item.user_id.any?
      redirect_to edit_list_item_path
    else
      flash.now.alert = "Cannot edit this item"
      redirect_to list_path
    end
  end

  def update
  end

  def destroy
  end
end
