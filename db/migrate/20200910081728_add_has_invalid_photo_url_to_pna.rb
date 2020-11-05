class AddHasInvalidPhotoUrlToPna < ActiveRecord::Migration[6.0]
  def change
    add_column :pnas, :has_invalid_photo_url, :boolean
  end
end
