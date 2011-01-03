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
# require 'actionpack'
require 'action_view'
require 'config/environment'  

mail_conf = YAML.load_file(File.expand_path("config/mail_config.yml"))

Configuration.config do |config|
  config.load_paths = %w(. app/helpers app/lib app/views app/requests)
  config.mailer :smtp, { :address              => mail_conf["address"],
                            :port                 => mail_conf["port"],
                            :domain               => mail_conf["domain"],
                            :user_name            => mail_conf["user_name"],
                            :password             => mail_conf["password"],
                            :authentication       => mail_conf["authentication"],
                            :enable_starttls_auto => mail_conf["enable_starttls_auto"]  }
end                    

# TODO: i think should pass this to Configuration
I18n.default_locale = 'pt-BR'
I18n.backend.load_translations(File.expand_path(File.join(__FILE__, '..','config', 'locales', "pt-BR.yml"))) 