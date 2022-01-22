class ChangeItemsItemNameNotNull < ActiveRecord::Migration[5.2]
  def change
    change_column_null :items, :item_name, false
  end
end
