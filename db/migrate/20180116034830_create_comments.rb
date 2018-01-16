class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :hints, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
