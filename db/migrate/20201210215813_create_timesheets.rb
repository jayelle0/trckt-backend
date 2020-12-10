class CreateTimesheets < ActiveRecord::Migration[6.0]
  def change
    create_table :timesheets do |t|
      t.belongs_to :project, null: false, foreign_key: true
      t.date :date
      t.integer :hours
      t.text :note

      t.timestamps
    end
  end
end
