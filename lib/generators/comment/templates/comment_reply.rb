class CommentReply < ActiveRecord::Base

  include ActsAsCommentableWithReply::CommentReply

  belongs_to :comment

  default_scope -> { order('created_at ASC')}

  # NOTE: install the acts_as_votable plugin if you
  # want user to vote on the quality of replies.
  #acts_as_votable

  # NOTE: Comments belong to a user
  belongs_to :user
end
