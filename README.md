# Cinch::Plugins::SimpleCalc

Cinch plugin to allow channel users to do basic math

## Installation

Add this line to your application's Gemfile:

    gem 'cinch-simplecalc'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install cinch-simplecalc

## Usage

Just add the plugin to your list:

    @bot = Cinch::Bot.new do
      configure do |c|
        c.plugins.plugins = [Cinch::Plugins::SimpleCalc]
      end
    end

Then in channel use:

    .math 2 + 3

    .math 4 ** 4

Note: this will only do BASIC math, and will strip all letters or complex
characters. If you want something more complex please see my other gem:

https://github.com/canonical-hackers/cinch-calculate

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
