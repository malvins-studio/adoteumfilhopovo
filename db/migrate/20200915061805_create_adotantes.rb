class CreateAdotantes < ActiveRecord::Migration[6.0]
  def change
    create_table :adotantes do |t|
      t.string :nome
      t.string :estado
      t.string :email
      t.string :telefone
      t.text :pedido_oracao
      t.boolean :marcou_comprometimento

      t.timestamps
    end
  end
end
