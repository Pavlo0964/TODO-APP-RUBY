class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag
      t.references :task

      t.timestamps
    end
    add_index :tags, :task_id
  end
end
