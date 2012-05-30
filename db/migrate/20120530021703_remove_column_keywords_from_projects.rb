class RemoveColumnKeywordsFromProjects < ActiveRecord::Migration
  def up
    remove_column :projects, :keywords
  end

  def down
    add_column :projects, :keywords, :text 
  end
end
