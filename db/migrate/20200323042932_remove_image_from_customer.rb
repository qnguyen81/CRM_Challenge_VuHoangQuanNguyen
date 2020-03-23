class RemoveImageFromCustomer < ActiveRecord::Migration[6.0]
  def change
    remove_column :customers, :image, :string
  end
end
