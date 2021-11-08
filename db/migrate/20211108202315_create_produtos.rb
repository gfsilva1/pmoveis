class CreateProdutos < ActiveRecord::Migration[6.1]
  def change
    create_table :produtos do |t|
      t.string :nome
      t.string :tipo
      t.decimal :valor

      t.timestamps
    end
  end
end
