class AddPriceToUser < ActiveRecord::Migration
  def change
    add_column :users, :raised, :decimal, :precision => 8, :scale => 2
  end
end
