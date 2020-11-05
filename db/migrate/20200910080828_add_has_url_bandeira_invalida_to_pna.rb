class AddHasUrlBandeiraInvalidaToPna < ActiveRecord::Migration[6.0]
  def change
    add_column :pnas, :has_url_bandeira_invalida, :boolean
  end
end
