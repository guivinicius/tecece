class RemoveColumnKeywordsFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :keywords
  end
end
