class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :goal
      t.string :start_date
      t.string :end_date
      t.integer :user_id

      t.timestamps
    end
  end
end
