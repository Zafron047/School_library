require_relative 'app'
require_relative 'welcome_message'
require_relative 'option_input'

def main
  app = App.new

  loop do
    WelcomeMessage.display_start
    WelcomeMessage.display_menu
    option = OptionInput.user_input
    OptionInput.option_list(app, option)
  end
end

main
