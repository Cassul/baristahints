class CreateClikes < ActiveRecord::Migration[5.1]
  def change
    create_table :clikes do |t|

      t.timestamps
    end
  end
end
