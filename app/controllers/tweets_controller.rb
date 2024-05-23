class TweetsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :about, :show]
  
  def index
    @tweet= Tweet.all
    if params[:search] == nil
      @tweets= Tweet.all
    elsif params[:search] == ''
      @tweets= Tweet.all
    else
      @tweets = Tweet.where("date LIKE ?", '%' + params[:search] + '%')
    end
  end

  def about
  end

  def show
    @tweet = Tweet.find(params[:id])
    @comments = @tweet.comments
    @comment = Comment.new
  end
  
 
  def new
     @tweet = Tweet.new
  end
    
  def create
      tweet = Tweet.new(tweet_params)
      if tweet.save!
        redirect_to :action => "index"
      else
        redirect_to :action => "new"
      end
  end

  def edit
      @tweet = Tweet.find(params[:id])
  end

  def update
    tweet = Tweet.find(params[:id])
    if tweet.update(tweet_params)
      redirect_to :action => "show", :id => tweet.id
    else
      redirect_to :action => "new"
    end
  end
    
  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to action: :index
  end

  private
  def tweet_params
      params.require(:tweet).permit(:image, :date, :place, :price, :comment, :address, :lat, :lng, :image_top )
  end
  def post_params
    params.require(:post).permit(:body,:lat,:lng)
  end

end
