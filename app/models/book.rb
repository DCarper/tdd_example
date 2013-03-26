class Book < ActiveRecord::Base
  attr_accessible :author, :isbn, :price, :publisher, :title
  validates_presence_of :author, :title
end
