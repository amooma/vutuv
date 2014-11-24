class AddPhotoFingerprintToProduct < ActiveRecord::Migration
  def change
    add_column :products, :photo_fingerprint, :string
  end
end
