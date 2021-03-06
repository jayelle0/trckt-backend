class CreateClients < ActiveRecord::Migration[6.0]
  def change
    create_table :clients do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.string :email
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
