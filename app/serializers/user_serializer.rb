class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :zipcode, :lat, :lon
  has_many: :favorited_articles
  has_many: :articles, through: :favorited_articles

  def latlon
    zipcode.to_latlon
  end
end
