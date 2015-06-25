class TweetsController < ApplicationController
  def show_for_user
    @user = User.find(params[:id])
    @tweets = @user.tweets

    respond_to do |format|
      format.html
      format.json { render :json => @tweets.to_json }
    end
  end

  def create
    @user = User.find(params[:id])
    @tweet = Tweet.new(params[:tweet])
    @tweet.user = @user
    @tweet.save

    respond_to do |format|
      format.html
      format.json { render :json => @tweet.to_json }
    end
  end
end
