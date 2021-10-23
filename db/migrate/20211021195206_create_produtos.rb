class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :description
      t.string :address
      t.string :price

      t.timestamps
    end
  end
end
