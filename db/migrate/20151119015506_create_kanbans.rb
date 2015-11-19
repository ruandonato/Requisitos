class CreateKanbans < ActiveRecord::Migration
  def change
    create_table :kanbans do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.references :stories

      t.timestamps null: false
    end
  end
end
