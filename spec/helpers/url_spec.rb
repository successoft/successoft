require 'spec_helper'

describe Sinatra::Application do
  include Rack::Test::Methods
  include Helpers::Url

  def app
    @app ||= Sinatra::Application
  end

  describe 'test routes path' do
    
    it "root_path should be equal to /" do
      root_path.should == '/'
    end
    
    %w(about products contact sent_mail).each do |page|
      it "#{page}_path should be equal to /#{page}" do
        send("#{page}_path").should == "/#{page}"        
      end
    end
  end
end
