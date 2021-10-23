class CreateEletros < ActiveRecord::Migration[6.1]
  def change
    create_table :eletros do |t|
      t.string :nome
      t.integer :valor

      t.timestamps
    end
  end
end
