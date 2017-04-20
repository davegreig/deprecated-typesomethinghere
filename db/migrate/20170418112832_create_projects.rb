class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :blurb
      t.string :github
      t.string :links
      t.string :status

      t.timestamps null: false
    end
  end
end
