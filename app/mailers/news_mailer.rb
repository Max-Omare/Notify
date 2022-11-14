class NewsMailer < ApplicationMailer
  def news_posted_email(user)
    @news = params[:news]

    mail(to: user.email, subject: "Hello")
  end
end
