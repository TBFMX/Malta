class CreateJuiceweeks < ActiveRecord::Migration
  def change
    create_table :juiceweeks do |t|
      t.date :date
      t.belongs_to :juicer
      t.belongs_to :juice

      t.timestamps
    end
  end
end
