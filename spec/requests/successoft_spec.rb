require 'spec_helper'

describe Sinatra::Application do
  include Rack::Test::Methods

  def app
    @app ||= Sinatra::Application
  end

  describe 'test routes' do
    
    %w(about services contact).each do |page|
      it "should respond to /#{page}" do
        get "/#{page}"
        last_response.should be_ok
      end
    end          

    it "should return 404 status" do
      get '/404'
      last_response.status.should == 404
    end
  end
end
