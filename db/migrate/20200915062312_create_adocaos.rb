class CreateAdocaos < ActiveRecord::Migration[6.0]
  def change
    create_table :adocaos do |t|
      t.references :pna, null: false, foreign_key: true
      t.references :adotante, null: false, foreign_key: true
      t.date :data_adocao

      t.timestamps
    end
  end
end
