class AddPhotoToCocktails < ActiveRecord::Migration[5.2]
  def change
    add_column :cocktails, :photo, :string
    mount_uploader :photo, PhotoUploader
  end
end
