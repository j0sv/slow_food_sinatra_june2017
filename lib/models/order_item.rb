class OrderItem
  include DataMapper::Resource

  property :id, Serial, key: true
  property :quantity, Integer

  belongs_to :order
  belongs_to :dish

end
