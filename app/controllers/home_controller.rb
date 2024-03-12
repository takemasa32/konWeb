class HomeController < ApplicationController
  def index
    @blogs = Blog.order(created_at: :desc).page(params[:page]).per(10) # ブログ記事を取得し、ページネーションを適用するコード

    # 戻るボタンの先を指定するためのコード
    session[:last_visited_index] = posts_path
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