class ListsController < ApplicationController


  before_filter :require_login
  before_filter :require_list, except: [:index, :new, :create]

  def index
    @lists = current_user.lists.order('lists.created_at DESC').all
  end

  def show
    
# @itemsCat = Category.findItems

  end
  
  def new
    @list = current_user.lists.build()

    # populated items (seeded)
    items = Item.includes(:category).where(:user_id => nil)

    # custom items
    items += current_user.items
  # binding.pry

    @groupedItems = {}

    items.each do |item|
      name = item.name
    
      item_list = @list.item_lists.build(:name => name, :item => item, :quantity => 1)
      
      if @groupedItems[item.category.name]
        @groupedItems[item.category.name] << item_list
      else
        @groupedItems[item.category.name] = [item_list]
      end
    end

    # @groupedItems = @list.item_lists.includes(:item => :category).group_by{|il| il.item.category.name }
  end
  
  def create
    # binding.pry
    
    @list = current_user.lists.build params[:list]
    startDate = params[:list][:start_date]
    endDate = params[:list][:end_date]
    @list.convertDate(startDate,endDate)
    
    # binding.pry
        
    if @list.save
      redirect_to "/lists/#{@list.id}", notice: "list created!"
    else
      render :new
    end
  end


  def edit
    # binding.pry
    @list = current_user.lists.find params[:id]

  end

  def update
      @list = current_user.lists.find params[:id]

    if @list.update_attributes params[:list]
 
      @list.save
      redirect_to [:lists], notice: "list updated!"
    else

      render :edit
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