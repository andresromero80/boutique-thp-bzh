# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new; end

  def create; end

  def destroy; end

  def edit; end

  def update; end
end
