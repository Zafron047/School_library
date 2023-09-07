module OptionInput
  def self.user_input
    gets.chomp.to_i
  end

  def self.option_list(app, option)
    actions = {
      1 => :book_list,
      2 => :people_list,
      3 => :create_person,
      4 => :create_a_book,
      5 => :create_a_rental,
      6 => :search_rental_by_id,
      7 => :exit_terminal
    }

    action = actions[option]
    if action
      app.send(action)
    else
      puts 'Invalid input, please try again.'
    end
  end
end