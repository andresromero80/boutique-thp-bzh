class CartsController < ApplicationController
  before_action :is_signed_in?
  def show
    # @cart_items = @cart.items
    @total = @cart.compute_total
  end

  def add_item
    permited = params.require(:add_item).permit(:item_id, :quantity)
    item = Item.find(permited[:item_id])

    asso_params = {
      item_id: item.id,
      quantity: permited[:quantity]
    }

    @cart.carts_items.create(asso_params)
   
    # redirect_to item_path
  end

  def remove_item
    @cart.carts_items.delete(params[:id_r])
    @total = @cart.compute_total
    @id = params[:id_o]

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
