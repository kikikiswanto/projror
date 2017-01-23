class RenameArticlesToNews < ActiveRecord::Migration[5.0]
  def change
  	rename_table :articles, :news
  end
end
