Pry.config.history.should_load = true

if defined?(PryByebug)
  Pry.commands.alias_command 'q', 'disable-pry'
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'
end

if defined?(PryRails::RAILS_PROMPT)
  Pry.config.prompt = PryRails::RAILS_PROMPT
end
