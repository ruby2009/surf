class AddAuthorIDtoCheeses < ActiveRecord::Migration[5.0]
  def change
    add_column :cheeses, :author_id, :integer
  end
end
