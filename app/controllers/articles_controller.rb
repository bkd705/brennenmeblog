class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      flash[:success] = "Article saved successfully!"
      redirect_to article_path( @article[:id] )
    else
      flash[:notice] = "An error occurred saving article."
      render action: :new
    end
  end

  private

    def article_params
      params.require(:article).permit(:user_id, :title, :body, :tag)
    end
end
