class CreateBaristahints < ActiveRecord::Migration[5.1]
  def change
    create_table :baristahints do |t|
      t.string :title
      t.text :body
      t.date :date
      t.text :image_url

      t.timestamps
    end
  end
end
