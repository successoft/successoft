require 'spec_helper'

describe Sinatra::Application do
  include Rack::Test::Methods
  include Helpers

  def app
    @app ||= Sinatra::Application
  end

  describe 'test helpers' do
    context "is_current_page?" do
      context "when the current page is /lorem" do
        let(:request) { Sinatra::Request.new({}) }
        it "should return false when the expected page is not match" do
          request.stub!(:path_info).and_return("/lorem")
          is_current_page?("ipsum").should be_false
        end                                         
        
        it "should return true when the expected page is match" do
          request.stub!(:path_info).and_return("/lorem")
          is_current_page?("lorem").should be_true
        end        
      end
    end
  end
end
