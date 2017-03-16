class AddCheesePhotoToCheese < ActiveRecord::Migration[5.0]
  def change
    add_column :cheeses, :cheese_photo, :string
  end
end
