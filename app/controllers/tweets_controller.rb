class TweetsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @tweets = @user.tweets
  end

  def create
    @user = User.find(params[:user_id])
    @tweet = Tweet.new(tweet_params)
    @tweet.user = @user
    @tweet.save!
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text)
  end
end
