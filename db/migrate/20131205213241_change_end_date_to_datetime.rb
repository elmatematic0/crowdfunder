class ChangeEndDateToDatetime < ActiveRecord::Migration
  def up
    change_table :projects do |t|
      t.change :end_date, :datetime
    end
  end

  def down
    change_table :projects do |t|
      t.change :end_date, :string
    end
  end
end
