class Rental
  attr_accessor :date, :book, :person

  def initialize(book, person, date: Time.now)
    @date = Time.now
    @book = book
    book.rentals << self

    @person = person
    person.rentals << self
  end
end
