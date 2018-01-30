class AddImageToHints < ActiveRecord::Migration[5.1]
  def change
    add_column :hints, :image, :string
  end
end
