class CreateRegionComments < ActiveRecord::Migration
  def change
  create_table :region_comments do |t|

    t.string :content
    t.belongs_to :region
    t.belongs_to :user

    t.timestamps null: false
  end
end
end
