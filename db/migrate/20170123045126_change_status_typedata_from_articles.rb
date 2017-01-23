class ChangeStatusTypedataFromArticles < ActiveRecord::Migration[5.0]
  def change
  	change_column(:articles, :status, :text)
  end
end
