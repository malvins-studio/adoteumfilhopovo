class CreateConfigs < ActiveRecord::Migration[6.0]
  def change
    create_table :configs do |t|
      t.integer :lote_adocao, :null => false, :default => 0

      t.timestamps
    end
  end
end
