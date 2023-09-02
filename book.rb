class Book
  attr_accessor :title, :author, :rentals, :id

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
    @id = Random.rand(1..1000)
  end

  def add_rental(person, date)
    rentals << Rental.new(self, person, date)
  end
end
