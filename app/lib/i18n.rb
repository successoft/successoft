module I18n
  class << self    
    private    
    # TODO: MonkeyPatch for deprecate :S
    def normalize_translation_keys(locale, key, scope, separator = nil)
      normalize_keys(locale, key, scope, separator)
    end    
  end
end