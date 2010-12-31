class SuccesSoft
  extend ApplicationLogger
  
  use Rack::Flash
  use Rack::ShowExceptions
  use Rack::CommonLogger, logger_file!
  
  set :root, File.expand_path(File.join(File.dirname(__FILE__), '..', '..'))
  set :views, Proc.new { File.join(root, 'app', "views") }
  set :public, Proc.new { File.join(root, "public") }
  set :logging, false     
  
  enable :sessions
  
  helpers do
    include ActionView::Helpers   
    include Helpers
    include Helpers::Url
  end 
  
  get '/' do 
    haml :index
  end
  
  %w(index about services contact).each do |page|
    get "/#{page}" do
      haml page.to_sym
    end
  end 
end
