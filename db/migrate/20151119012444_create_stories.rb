class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :role
      t.string :action
      t.string :reason
      t.text :description
      t.string :status
      t.integer :estimate
      t.text :acceptance
      t.text :observations
      t.text :task
      t.integer :release

      t.timestamps null: false
    end
  end
end
