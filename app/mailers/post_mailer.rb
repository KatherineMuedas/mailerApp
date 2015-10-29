class PostMailer < ActionMailer::Base
  def post_created(user)
    mail(to: user.email,
        from:"experiment@gmail.com",
        subject: "Post created",
        body: "This is my first mailer!"
        )
  end
end