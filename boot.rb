period_dir = File.expand_path('.')
$LOAD_PATH.unshift(period_dir) unless $LOAD_PATH.include?(period_dir)

begin
  require File.expand_path(".bundle/environment", __FILE__)
rescue LoadError
  require "rubygems"
  require "bundler"

  Bundler.setup(:default)
end

Bundler.require
require 'actionpack'
require 'action_view'
require 'config/environment'
Configuration.config do |config|
  config.load_paths = %w(. app/helpers app/lib app/views app/requests)
end