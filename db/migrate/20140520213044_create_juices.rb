class CreateJuices < ActiveRecord::Migration
  def change
    create_table :juices do |t|
      t.string :name
      t.string :recipe_id

      t.timestamps
    end
  end
end
