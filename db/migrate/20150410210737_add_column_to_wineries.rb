class AddColumnToWineries < ActiveRecord::Migration
  def change
    add_column :winery_comments, :region_id, :integer
  end
end
