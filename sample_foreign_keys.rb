
class AddForeignKeys < ActiveRecord::Migration
  def up
	add_foreign_key(from_table, to_table, options)
    #   example
    add_foreign_key(:comments, :posts)
    #If the column is named article_id instead of post_id, use the :column option
    add_foreign_key(:comments, :posts, column: 'article_id')
  end 

  def down
      remove_foreign_key(from_table, to_table, options)
  end
  
#   detailed documentation is given on https://github.com/matthuhiggins/foreigner
end
