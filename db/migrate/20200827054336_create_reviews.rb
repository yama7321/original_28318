class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.text :content, null: false
      t.references :user, null: false, foreign_key: true
      t.references :profile, null: false, foreign_key: true
      t.integer :valuation, null: false
      t.timestamps
    end
  end
end
