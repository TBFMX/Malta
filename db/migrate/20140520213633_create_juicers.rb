class CreateJuicers < ActiveRecord::Migration
  def change
    create_table :juicers do |t|
      t.string :name
      t.datetime :date
      t.integer :juice_id

      t.timestamps
    end
  end
end
