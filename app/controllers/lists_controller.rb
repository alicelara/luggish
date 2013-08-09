class ListsController < ApplicationController


  before_filter :require_login
  before_filter :require_list, except: [:index, :new, :create]

  def index
    @lists = current_user.lists.order('lists.created_at DESC').all
  end

  def show
    
    @list = current_user.lists.find params[:id]
    create_items_list(@list)

    # populated items (seeded)
    

  end
  
  def new
    @list = current_user.lists.build()

    create_items_list(@list)
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
      create_items_list(@list)
      render :new

    end
  end


  def edit
    # binding.pry
    @list = current_user.lists.find params[:id]
    # populated items (seeded)
    create_items_list(@list)

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

  def category
  end

  protected
  def create_items_list(list)
    # populated items (seeded)
    items = Item.includes(:category).where(:user_id => nil)

    # custom items
    items += current_user.items if current_user
  # binding.pry

 

    @groupedItems = {}

    if list.item_lists.any? 
      list.item_lists.each do |item_list| 
        item = item_list.item
        if @groupedItems[item.category.name]
          @groupedItems[item.category.name] << item_list
        else
          @groupedItems[item.category.name] = [item_list]
        end
      end
    else
      items.each do |item|
        name = item.name
      
        item_list = @list.item_lists.build(:name => name, :item => item, :quantity => 1)
        
        if @groupedItems[item.category.name]
          @groupedItems[item.category.name] << item_list
        else
          @groupedItems[item.category.name] = [item_list]
        end
      end
    end  
  end

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