module ApplicationLogger
  def logger_file!
    logger_filename = "logs/successoft.log"
    logger_file = File.open(logger_filename, 'a+')
    logger_file.sync = true
    logger_file
  end
end