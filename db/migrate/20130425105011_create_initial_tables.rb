class CreateInitialTables < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :first_name, :null => false
      t.string :last_name, :null => false
      t.timestamps
    end

    create_table :posts do |t|
      t.references :author, :null => false
      t.string :title, :null => false
      t.text :content, :null => false
      t.timestamps
    end

    create_table :tags do |t|
      t.string :name, :null => false
      t.timestamps
    end

    create_table :posts_tags do |t|
      t.references :post
      t.references :tag
      t.timestamps
    end

  end
end
