class CartsController < ApplicationController
  before_action :is_signed_in?
  def show
    @cart_items = @cart.items
    @total = @cart.compute_total
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
    @total = @cart.compute_total
    @id = item.id

    respond_to do |format|
      format.html
      format.js
     end
  end

  def is_signed_in?
    if !user_signed_in?
       redirect_to new_user_session_path
    end
  end
end
