class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :blocky1
      t.integer :blocky2
      t.integer :blocky3
      t.integer :blocky4
      t.integer :blocky5

      t.timestamps null: false
    end
  end
end
