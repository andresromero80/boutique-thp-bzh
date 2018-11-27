class CartsController < ApplicationController
  def add_item
    @cart.add(item_id) if Item.exists?(item_id)

    redirect_to cart_path
    end

    def remove_item
      @cart.delete(item_id)

      redirect_to cart_path
    end

    def item_id
      params[:id].to_i
    end
end
