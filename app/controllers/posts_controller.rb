class PostsController < ApplicationController

  def index #indexを定義した
    @posts = Post.all.order(id: "DESC") #全てのレコードをpostsに代入
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
