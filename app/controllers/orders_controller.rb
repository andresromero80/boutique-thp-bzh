class OrdersController < ApplicationController

	def checkout
		@contact = Contact.new
	end

	def get_contact_params
		params.require(:contact).permit(:firstname, :lastname, :address, :country, :postal_code, :number)
	end
	def create
		permited = get_contact_params
		permited[:user_id] = current_user.id
		@contact = Contact.create(permited)

		@order = Order.create(user_id: current_user.id)
    @cart.carts_items.each do |asso|
    	item = Item.find(asso.item_id)
      asso_params = {
        order_id: @order.id,
        quantity: asso.quantity
      }

      item.orders_items.create(asso_params)
      @cart.carts_items.delete(asso)
    end
	end
end