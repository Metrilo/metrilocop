# Metrilocop

A collection of metrilo's linters - currently including:
- Rubocop
- ESlint
- Ember Template Tint
- Stylelint

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'metrilocop'
```

And then execute:

    $ bundle

Frontend dependencies live in the gem's bundle location. Install them like so in order to use the frontend linters:

    $ bundle exec metrilocop install

You can also uninstall them using:

    $ bundle exec metrilocop uninstall

## Usage

Metrilocop currently works by passing it files to lint. It reads the file extension and runs the appropriate linters

    $ bundle exec metrilocop ruby_file.rb javascript_file.js ember_template_file.hbs css_file.css

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/metrilocop.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
