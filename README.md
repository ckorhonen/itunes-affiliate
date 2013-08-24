itunes-affiliate
================

A Ruby Gem to simplify creation of PHG iTunes affiliate links

## Installation

Add `gem 'itunes-affiliate-link` to your gemfile and run `bundle install`

## Configuration

Run `bundle exec rails g itunes_affiliate:install`.

This will create the file `config/initializers/itunes_affiliate.rb` - you should edit this and add
your affiliate token.

## Usage

`ItunesAffiliateLink.create_link(url, campaign_token)`

The URL should be a standard iTunes link.

The campaign token is optional but can be used to identify the source of the affiliate commission.