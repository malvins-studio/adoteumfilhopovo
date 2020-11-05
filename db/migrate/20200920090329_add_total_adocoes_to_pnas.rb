class AddTotalAdocoesToPnas < ActiveRecord::Migration[6.0]
  def change
    add_column :pnas, :total_adocoes, :integer, :null => false, :default => 0
  end
end
