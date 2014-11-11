class Activity
  include DataMapper::Resource

  property :id, Serial
  property :name, String, length: 255

  belongs_to :category
  has n, :samples

end