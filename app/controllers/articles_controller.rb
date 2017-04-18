class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find( params[:id] )
  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.build(article_params)

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
      params.require(:article).permit(:title, :body, :tag)
    end
end
