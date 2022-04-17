class UserSerializer
  attributes :name, :zipcode, :lat, :lon


  def latlon
    zipcode.to_latlon
  end
end
