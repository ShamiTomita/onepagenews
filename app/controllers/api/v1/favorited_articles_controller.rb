class Api::V1::FavoritedArticlesController < ApplicationController
  def index
    favorites = FavoritedArticle.all

    render json: FavoritedArticlesSerializer.new(favorites)
  end

  def new
    favorited_article = FavoritedArticle.new
  end

  def show
    fave = FavoritedArticle.find_by(id: params[:id])

    render json: FavoritedArticlesSerializer.new(fave)
  end

  def create
    favorited_article = FavoritedArticle.new(favorited_article_params)
  end

  private
  def user_params
    params.require(:favorited_article).permit(:user_id, :article_id)
  end


end
