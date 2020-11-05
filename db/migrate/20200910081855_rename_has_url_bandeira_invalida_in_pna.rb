class RenameHasUrlBandeiraInvalidaInPna < ActiveRecord::Migration[6.0]
  def change
    rename_column :pnas, :has_url_bandeira_invalida, :has_invalid_flag_url
  end
end
