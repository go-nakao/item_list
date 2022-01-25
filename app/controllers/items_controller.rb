class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end

  def updated
  end

  def create
    item = Item.new(item_params)
    item.save!
    redirect_to items_url, notice: "貸出品「#{item.item_name}」を登録しました。"
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_url, notice: "貸出品「#{item.item_name}」を削除しました。"
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :customer, :loan_date, :return_date)
  end
end
