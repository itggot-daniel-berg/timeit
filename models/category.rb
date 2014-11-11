class Category
  include DataMapper::Resource

  property :id, Serial
  property :name, String, length: 255

  has n, :activities

end