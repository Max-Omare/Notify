class NewsController < ApplicationController
  before_action :set_service, only: %i[destroy]
  before_action :get_users

  def index
    @news = News.all
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    return unless @news.save

    @users.each do |user|
      NewsMailer.with(news: @news).news_posted_email(user).deliver_later
    end
  end

  def destroy
    @news.destroy
  end

  def get_users
    @users = User.all
  end

  private

  def set_news
    @news = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:title, :body)
  end
end
