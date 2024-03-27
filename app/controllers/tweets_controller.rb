class TweetsController < ApplicationController
  def index
    @tweet = Tweet.new
    @tweets = Tweet.all.order(created_at: :asc)
  end

  def create
    @tweet = Tweet.new(tweet_params)
  end

  def destroy
  end

  private

  def tweet_params
    params.require(:tweet).permit(:body)
  end

end
