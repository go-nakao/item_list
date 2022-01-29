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

  def update
    item = Item.find(params[:id]) #任意のアイテムを取得
    item.update!(item_params) #情報を更新
    redirect_to items_url, notice: "貸出品「#{item.item_name}」を更新しました。"
  end

  def create
    @item = Item.new(item_params)

    if @item.save #trueなら登録、falseなら登録画面を表示
      redirect_to items_url, notice: "貸出品「#{@item.item_name}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
    redirect_to items_url, notice: "貸出品「#{item.item_name}」を削除しました。"
  end

  private

  def item_params
    params.require(:item).permit(:item_name, :customer, :loan_date, :return_date, :remark)
  end
end
