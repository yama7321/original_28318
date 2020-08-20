class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :title, null: false
      t.text :self_introduction, null: false
      t.integer :price, null:false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
