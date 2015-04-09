class CreateWineries < ActiveRecord::Migration
  def change
    create_table :wineries do |t|

      t.string :state
      t.string :region
      t.string :winery_name
      t.integer :rating

      t.timestamps null: false
    end
  end
end
