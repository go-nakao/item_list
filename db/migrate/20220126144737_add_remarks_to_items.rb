class AddRemarksToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :remark, :text
  end
end
