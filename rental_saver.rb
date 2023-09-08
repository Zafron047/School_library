module RentalSaver
  def self.save_rental_to_json(rentals)
    file_path = 'data/rentals.json'

    json_data = rentals.map do |rental|
      {
        'date' => rental.date,
        'book' => rental.book,
        'person' => rental.person
      }
    end.to_json
    
    File.open(file_path, 'w') do |file|
      file.puts(json_data)
    end
  end

  def self.load_rentals_from_json
    file_path = 'data/rentals.json'

    if File.exist?(file_path)
      json_data = File.read(file_path)
      
      JSON.parse(json_data).map do |rental_data|
        Rental.new(rental_data['date'], rental_data['book'], rental_data['person'])
      end
    else
      nil
    end
  end
end
