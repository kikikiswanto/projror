class CreateArticle < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
    	t.string :title
	    t.string :content
	    t.integer :status

	    t.timestamps
    end
  end
end
