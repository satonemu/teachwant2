class Admin::ItemsController < ApplicationController


	def create
	 @item = Item.new(item_params)
	 @items = Item.all
	 if @item.save
      redirect_to admin_items_path
     else
     render :index
     end
 	end

	def index
	 @item = Item.new
	 @items = Item.all
	end

	def edit
	 @item = Item.find(params[:id])
	end

	def update
	 @item = Item.find(params[:id])
	 if @item.update(item_params)
	 	flash[:success] = "更新完了"
	 	redirect_to admin_items_path
	 else
	 	render :edit
	 end
	end

	def destroy
	 @item = Item.find(params[:id])
  	 @item.destroy
     redirect_to admin_items_path
	end

 	private

  	def item_params
   	 params.require(:item).permit(:name)
  	end

end
