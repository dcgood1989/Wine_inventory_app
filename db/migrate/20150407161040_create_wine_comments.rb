class CreateWineComments < ActiveRecord::Migration
  def change
    create_table :wine_comments do |t|

      t.string :content
      t.belongs_to :user
      t.belongs_to :wine

      t.timestamps null: false
    end
  end
end
