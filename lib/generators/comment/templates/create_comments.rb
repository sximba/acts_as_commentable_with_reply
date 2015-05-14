class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.string :title, :limit => 50, :default => "" 
      t.text :comment
      t.references :commentable, :polymorphic => true
      t.references :user
      t.string :role, :default => "comments"
      t.timestamps null: true
    end

    create_table :comment_replies do |t|
      t.string :reply
      t.references :comment
      t.references :user
      t.timestamps null: true
    end

    add_index :comments, :commentable_type
    add_index :comments, :commentable_id
    add_index :comments, :user_id

    add_index :comment_replies, :comment_id
    add_index :comment_replies, :user_id
  end

  def self.down
    drop_table :comment_replies
    drop_table :comments
  end
end
