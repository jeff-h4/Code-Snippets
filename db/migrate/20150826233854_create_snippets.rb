class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.string :work

      t.timestamps null: false
    end
  end
end
