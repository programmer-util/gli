# Make sure we get the gli that's local
require File.join([File.dirname(__FILE__),'lib','gli','version.rb'])

spec = Gem::Specification.new do |s| 
  s.name = 'gli'
  s.version = GLI::VERSION
  s.author = 'David Copeland'
  s.email = 'davidcopeland@naildrivin5.com'
  s.homepage = 'http://davetron5000.github.com/gli'
  s.platform = Gem::Platform::RUBY
  s.summary = 'A Git Like Interface for building command line apps'
  s.description = 'An application and API for describing command line interfaces that can be used to quickly create a shell for executing command-line tasks.  The command line user interface is similar to Git''s, in that it takes global options, a command, command-specific options, and arguments'
  s.files = %w(
lib/gli/app.rb
lib/gli/command.rb
lib/gli/command_line_option.rb
lib/gli/command_line_token.rb
lib/gli/command_support.rb
lib/gli/commands/compound_command.rb
lib/gli/commands/help.rb
lib/gli/commands/help_modules/command_help_format.rb
lib/gli/commands/help_modules/global_help_format.rb
lib/gli/commands/help_modules/list_formatter.rb
lib/gli/commands/help_modules/options_formatter.rb
lib/gli/commands/help_modules/text_wrapper.rb
lib/gli/copy_options_to_aliases.rb
lib/gli/dsl.rb
lib/gli/exceptions.rb
lib/gli/flag.rb
lib/gli/options.rb
lib/gli/switch.rb
lib/gli/terminal.rb
lib/gli/version.rb
lib/gli.rb
lib/support/initconfig.rb
lib/support/scaffold.rb
bin/gli
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc', 'gli.rdoc']
  s.rdoc_options << '--title' << 'Git Like Interface' << '--main' << 'README.rdoc'
  s.bindir = 'bin'
  s.executables << 'gli'
  s.rubyforge_project = 'gli'
  s.add_development_dependency('rake', '~> 0.9.2.2')
  s.add_development_dependency('rdoc', '~> 3.11')
  s.add_development_dependency('roodi', '~> 2.1.0')
  s.add_development_dependency('grancher', '~> 0.1.5')
  s.add_development_dependency('rainbow', '~> 1.1.1')
  s.add_development_dependency('clean_test')
  s.add_development_dependency('aruba', '~> 0.4.7')
end

