class Rental
  attr_accessor :date, :book
  
  def initialize(book, date: Time.now)
    @date = date
    @book = book
    book.rentals << self
  end
end