class FavoritedArticlesSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :article_id, :article
  
end
