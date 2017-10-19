class AddColumnsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :name, :string
    add_column :products, :description, :text
    add_column :products, :image, :string
    add_column :products, :price, :integer
  end
end
