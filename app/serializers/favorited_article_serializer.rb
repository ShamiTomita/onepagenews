
class FavoritedArticleSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :article_id, :article, :user

end
