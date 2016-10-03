# TypeKit Domain Manager [![Gem Version](https://badge.fury.io/rb/typekit_domain_manager.svg)](https://badge.fury.io/rb/typekit_domain_manager)

Provides an easy interface to dynamically manage TypeKit domain whitelists.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'typekit_domain_manager'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install typekit_domain_manager

## Usage

TypeKit Domain Manager is made up of a single class and three methods. It's very easy to interact with:

```ruby
typekit_api_key = 'your typekit api key'
typekit_kit_id = 'your typekit kit id'

# Create a new instance of the domain manager
domain_manager = TypekitDomainManager::Kit.new typekit_api_key, typekit_kit_id

# Add a new domain to the whitelist
domain_manager.add_domain 'example.com'

# Remove a domain from the whitelist
domain_manager.remove_domain 'example.com'

# Get a list of domains
domain_manager.get_domains
```

That's all there is to it. If you hit any snags, please do open an issue or submit a pull request.

Head over to the [TypeKit site for an API key](https://typekit.com/account/tokens), and visit the 'Settings' screen for a kit to get its ID.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/danielgroves/typekit_domain_manager. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
