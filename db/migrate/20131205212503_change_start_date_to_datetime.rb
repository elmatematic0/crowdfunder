class ChangeStartDateToDatetime < ActiveRecord::Migration
  def up
    change_table :projects do |t|
      t.change :start_date, :datetime
    end
  end

  def down
    change_table :projects do |t|
      t.change :start_date, :string
    end
  end
end