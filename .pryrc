Pry.config.history.should_load = true

if defined?(PryByebug)
  Pry.commands.alias_command 'q', 'disable-pry'
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

begin
  require 'awesome_print'
  Pry.config.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
  puts "no awesome_print :("
end

require 'factory_girl'
FactoryGirl.find_definitions
