class User
  include DataMapper::Resource

  property :id, Serial

  has n, :samples

end