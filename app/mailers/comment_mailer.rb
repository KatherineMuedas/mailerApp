class CommentMailer < ActionMailer::Base
  def comment_created(current_user, post_owner, content)

    @current_user = current_user
    @post_owner = post_owner
    @content = content

    mail(to: post_owner.email,
        from:"experiment@gmail.com",
        subject: "Comment created",
        )
  end
end