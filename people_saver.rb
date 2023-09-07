module PeopleSaver
  def self.save_people_to_json(people)
    file_path = 'data/people.json'
  
    json_data = people.map do |person|
      if person.is_a?(Student)
          {
            'type' => 'student',
            'age' => person.age,
            'name' => person.name,
            'parent_permission' => person.parent_permission
          }
      elsif person.is_a?(Teacher)
          {
            'type' => 'Teacher',
            'age' => person.age,
            'name' => person.name,
            'specialization' => person.specialization
          }
      end
    end.to_json
  
    File.open(file_path, 'w') do |file|
      file.puts(json_data)
    end
  end
  
  def self.load_people_from_json
    file_path = 'data/people.json'
    if File.exist?(file_path)
      json_data = File.read(file_path)
      JSON.parse(json_data).map do |person_data|
        if person_data['type'] == 'student'
          Student.new(person_data['age'], person_data['name'], person_data['parent_permission'])
        elsif person_data['type'] == 'teacher'
          Teacher.new(person_data['age'], person_data['name'], person_data['specialization'])
        end
      end
    else
      nil
    end
  end
end
