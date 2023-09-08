module BookSaver
  def self.save_books_to_json(books) 
    file_path = 'data/books.json'

    json_data = books.map do |book|
      {
        'title' => book.title,
        'author' => book.author
      }
    end.to_json

    File.open(file_path, 'w') do |file|
      file.puts(json_data)
    end
  end

  def self.load_books_from_json
    file_path = 'data/books.json'

    if File.exist?(file_path)
      json_data = File.read(file_path)
      
      JSON.parse(json_data).map do |book_data|
        Book.new(book_data['title'], book_data['author'])
      end
    else
      nil
    end
  end 
end
