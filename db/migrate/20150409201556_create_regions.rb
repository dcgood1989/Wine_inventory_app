class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|

      t.string :country
      t.string :state
      t.string :region_name

      t.timestamps null: false
    end
  end
end
