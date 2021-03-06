class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    redirect_to root_path
  end

  def archive
    @articles = Article.all
    render :archive
  end

  def showtag
    @selected_tag = params[:tag]
    @article = Article.all
    respond_to do |format|
      format.html {redirect_to articles_archive_path}
      format.js { render layout: false } 
    end
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status, :tag)
    end
end
