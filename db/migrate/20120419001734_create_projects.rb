class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.date :delivery_year
      t.references :college
      t.text :keywords

      t.timestamps
    end
    add_index :projects, :college_id
  end
end
