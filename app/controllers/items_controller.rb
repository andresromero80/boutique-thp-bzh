# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def add_to_cart
    permited = params.permit(:item_id, :quantity)

    item = Item.find(permited[:item_id])
    @cart.items << {item: item, quantity: permited[:quantity]}

  end

  def show
    @item = Item.find_by_slug(params[:slug])
  end

  def new; end

  def create; end

  def destroy; end

  def edit; end

  def update; end
end
