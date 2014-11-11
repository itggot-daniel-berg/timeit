class Sample
  include DataMapper::Resource

  property :id, Serial
  property :duration, Integer, required: true
  property :date, Date, required: true
  property :comment, String, length: 255

  belongs_to :activity
  belongs_to :user

end