class CommentObserver < ActiveRecord::Observer
  def after_create(comment)
    (comment.ticket.watchers - [comment.user]).uniq.each do |user|
      Notifier.comment_updated(comment, user).deliver
    end
  end
end
