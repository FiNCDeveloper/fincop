# Fincop

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/fincop`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fincop', '>=0.51.0.2', git: 'git@github.com:FiNCDeveloper/fincop.git
```

## Usage

Setup .rubocop.yml

```sh
bundle exec fincop init
```

`init` generate the following directive to your `.rubocop.yml`:

```yaml
inherit_gem:
  fincop:
    - 'config/rails.yml'
    - 'config/rspec.yml'
    - 'config/rubocop.yml'
    # If you are using Rails 4, activate this cop.
    # - 'config/disabled_for_rails_4.yml'

AllCops:
  TargetRubyVersion: 2.4

  DisplayStyleGuide: true
```

If you use Rails 4, uncomment and activate `'config/disabled_for_rails_4.yml'`.

```sh
bundle exec rubocop <options...>
```

You still can override some rules yourself. First, add setting file (for example, `config/rubocop/.enabled.yml`) and write rules.

```yaml
Rails/Delegate:
  EnforceForPrefixed: false
```

Then, add `inherit_from` to your .rubocop.yml like below.

```yaml
inherit_gem:
  fincop:
    - 'config/rails.yml'
    - 'config/rspec.yml'
    - 'config/rubocop.yml'

inherit_from:
  - 'config/rubocop/.enabled.yml'
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/fincop.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

