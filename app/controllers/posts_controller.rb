class PostsController < ApplicationController

  def index #indexを定義した
    @posts = Post.all #全てのレコードをpostsに代入
  end

  def new
    
  end

  def create
    Post.create(content: params[:content])
  end
end
