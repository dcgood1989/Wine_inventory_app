class CreateWine < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :bottle_name
      t.string :grape_type
      t.string :taste
      t.integer :bottle_rating
      t.integer :bottle_year
      t.integer :amount
      t.integer :price
      t.belongs_to :winery
      t.belongs_to :user

      t.timestamps null: false
    end
  end
end
