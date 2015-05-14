class CreateCommentReplies < ActiveRecord::Migration
  def self.up
    create_table :comment_replies do |t|
      t.string :reply
      t.references :comment
      t.references :user
      t.timestamps null: true
    end

    add_index :comment_replies, :comment_id
    add_index :comment_replies, :user_id
  end

  def self.down
    drop_table :comment_replies
  end
end
