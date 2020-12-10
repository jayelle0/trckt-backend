class CreateProjects < ActiveRecord::Migration[6.0]
  def change
    create_table :projects do |t|
      t.belongs_to :client, null: false, foreign_key: true
      t.string :name
      t.integer :payment_terms
      t.integer :hourly_fee
      t.boolean :complete, :default => false

      t.timestamps
    end
  end
end
