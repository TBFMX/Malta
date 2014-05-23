class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :juice_id
      t.integer :ingredient_id
      t.decimal :portion

      t.timestamps
    end
  end
end
