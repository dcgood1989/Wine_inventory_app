class AddColumnToRegionsUserId < ActiveRecord::Migration
  def change
    add_column :regions, :user_id, :integer

    add_column :wineries, :user_id, :integer
    add_column :wineries, :region_id, :integer
  end
end
