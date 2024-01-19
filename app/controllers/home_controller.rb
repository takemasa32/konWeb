class HomeController < ApplicationController
  def index
    @blogs = Blog.all # ブログ記事を取得するコード
  end 

  def top
  end

  def sns
  end

  # GET /blogs/1 or /blogs/1.json
    def show
    @blog = Blog.find(params[:id])
    render 'show' # ブログ記事の詳細ビューをレンダリング
  end
end
