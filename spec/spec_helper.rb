require 'rubygems'
require 'bundler/setup'
require 'redis'

require 'redis_tags' # and any other gems you need
require 'models/book'

Redis.new.flushdb

RSpec.configure do |config|
  
end