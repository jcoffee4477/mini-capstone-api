class Product < ApplicationRecord
has_many :images

def supplier
  Supplier.find_by(id: supplier_id)
end

def is_discounted?
  if price <= 10
    return true
  else
    return false
  end
end

def tax
  return price * 0.009
end

def total
  return price + tax
end

validates :name, presence: true
validates :name, uniqueness: true
validates :price, presence: true
validates :price, numericality: { greater_than: 0 }
validates :description, presence: true
validates :description, length: { in: 10..500 }

end
