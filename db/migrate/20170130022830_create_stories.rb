class CreateStories < ActiveRecord::Migration[5.0]
  def change
    create_table :stories do |t|
      t.string :plot
      t.string :writer
      t.integer :upvotes

      t.timestamps
    end
  end
end
