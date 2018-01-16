class CreateHints < ActiveRecord::Migration[5.1]
  def change
    create_table :hints do |t|
      t.string :title
      t.text :body
      t.text :image_url
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
