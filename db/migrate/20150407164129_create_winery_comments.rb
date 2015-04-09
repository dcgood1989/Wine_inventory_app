class CreateWineryComments < ActiveRecord::Migration
  def change
    create_table :winery_comments do |t|

      t.string :content
      t.belongs_to :user
      t.belongs_to :winery

      t.timestamps null: false
    end
  end
end
