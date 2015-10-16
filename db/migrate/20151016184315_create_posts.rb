class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.column :title, :string
      t.column :contributor, :string
      t.column :image, :string
      t.column :category_id, :integer

      t.timestamps
    end
  end
end
