require 'bundler/setup'
require 'rspec'
require 'fuubar'
require 'queencheck/rspec'

lib_dir = File.join(File.dirname(__FILE__), '../lib')
$LOAD_PATH << File.expand_path(lib_dir)

require 'fizz_buzz'

RSpec.configure do |config|
  config.add_formatter Fuubar
end
