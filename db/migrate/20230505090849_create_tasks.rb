class CreateTasks < ActiveRecord::Migration[7.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.boolean :completed
      t.time :completed_at
      t.integer :priority
      t.timestamps
    end
  end
end
