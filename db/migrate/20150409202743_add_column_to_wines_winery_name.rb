class AddColumnToWinesWineryName < ActiveRecord::Migration
  def change
    add_column :wines, :winery_name, :string
  end
end
