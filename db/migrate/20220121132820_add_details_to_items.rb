class AddDetailsToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :customer, :string
    add_column :items, :loan_date, :date
    add_column :items, :return_date, :date
  end
end
