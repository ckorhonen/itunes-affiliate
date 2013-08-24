require 'itunes_affiliate_link/configuration'
require 'uri'

module ItunesAffiliateLink
  class << self

    attr_accessor :config

    # Sets configuration parameters.
    def configure
      yield(config)
    end

    # Returns a singleton configuration object
    def config
      unless @config
        @config = Configuration.new
        @config.reset
      end
      @config
    end

    # Creates iTunes affiliate link, takes optional campaign token
    def create_link(url, campaign_token=nil)
      uri = URI.parse(url)
      uri.query = [uri.query, "at=#{ItunesAffiliateLink.config.affiliate_token}"].compact.join('&')
      unless campaign_token.nil?
        uri.query = [uri.query, "ct=#{campaign_token}"].compact.join('&')
      end
      return uri.to_s
    end
  end
end