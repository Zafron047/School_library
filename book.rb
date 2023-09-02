class Book
  attr_accessor :title, :author, :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(_book, person, date)
    rentals << Rental.new(self, person, date)
  end
end
