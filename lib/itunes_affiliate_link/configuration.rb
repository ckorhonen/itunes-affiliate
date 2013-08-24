module ItunesAffiliateLink
  class Configuration

    VALID_OPTION_KEYS = [ :affiliate_token ]
    DEFAULT_AFFILIATE_TOKEN = ''

    attr_accessor :affiliate_token

    def self.extended(base)
      base.reset
    end

    def configure
      yield self
    end

    def options
      options = {}
      VALID_OPTIONS_KEYS.each { |k| options[k] = send [k] }
      options
    end

    def reset
      self.affiliate_token = DEFAULT_AFFILIATE_TOKEN
    end

  end
end