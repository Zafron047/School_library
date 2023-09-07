require_relative 'app'
require_relative 'welcome_message'
require_relative 'option_input'


# def display_start
#   puts 'Welcome to School Library App terminal!'
# end

# def user_input
#   gets.chomp.to_i
# end

# def option_list(app, option)
#   actions = {
#     1 => :book_list,
#     2 => :people_list,
#     3 => :create_person,
#     4 => :create_a_book,
#     5 => :create_a_rental,
#     6 => :search_rental_by_id,
#     7 => :exit_terminal
#   }

#   action = actions[option]
#   if action
#     app.send(action)
#   else
#     puts 'Invalid input, please try again.'
#   end
# end

# def exit_terminal
#   puts 'Exiting terminal....'
#   exit(0)
# end

def main
  app = App.new

  loop do
    WelcomeMessage.display_start
    WelcomeMessage.display_menu
    option = OptionInput.user_input
    OptionInput.option_list(app, option)
    # app.exit_terminal
  end
end

main
