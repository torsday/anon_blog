class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name
      t.string :last_name
      t.timestamps
    end

    create_table :posts do |t|
      t.string :author
      t.string :title
      t.text :content
      t.timestamps
    end

    create_table :tags do |t|
      t.string :name
      t.timestamps
    end

    create_table :posts_tags do |t|
      t.references :post
      t.references :tag
      t.timestamps
    end

  end
end
