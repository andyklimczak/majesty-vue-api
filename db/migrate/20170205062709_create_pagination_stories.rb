class CreatePaginationStories < ActiveRecord::Migration[5.0]
  def change
    create_table :pagination_stories do |t|
      t.string :plot
      t.string :writer
      t.integer :upvotes

      t.timestamps
    end
  end
end
