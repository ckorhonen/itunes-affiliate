Gem::Specification.new do |s|
  s.name        = 'itunes-affiliate-link'
  s.version     = '1.0'
  s.date        = '2013-08-25'
  s.summary     = "ITunes affiliate link generator."
  s.description = "A simple gem to automate creation of PHG iTunes affiliate links."
  s.authors     = ["Chris Korhonen"]
  s.email       = 'ckorhonen@gmail.com'
  s.homepage    = 'http://github.com/ckorhonen/itunes-affiliate'
  s.license     = 'MIT'
  s.require_paths = ["lib"]
  s.files       = [ "lib/itunes-affiliate-link.rb",
                    "lib/itunes_affiliate_link/configuration.rb",
                    "lib/generators/itunes_affiliate_link/install/install-generator.rb",
                    "lib/generators/templates/itunes_affiliate_link.rb"
                  ]
end