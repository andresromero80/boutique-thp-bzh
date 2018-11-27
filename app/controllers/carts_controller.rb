class CartsController < ApplicationController

  def show
    @cart_items = @cart.items
  end

  def add_item
    item = Item.find(params['id'])
    # @cart.items.build(id: item.id)
    @cart.items << item
   
    redirect_to item_path
  end

  def remove_item
    item = Item.find(params['id'])
    @cart.items.delete(item)

    redirect_to cart_path
  end

  def item_id
    params[:id].to_i
  end
end
