# TranslateYandex

Essa Gem foi desenvolvida como um Tutorial para o blog http://onebitcode.com, para ver o tutorial você pode acessar http://onebitcode.com/criando-uma-gem-e-clonando-o-translate.

Neste tutorial foi utilizado
-Ruby
-Api Yandex
-TDD
-Rspec
-Rest Client (gem)
-Json (gem)



## Installation

Add this line to your application's Gemfile:

```ruby
gem 'translate_yandex'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install translate_yandex

## Usage

First initialize the Yandex class using the Yandex API key, you can get your key here https://passport.yandex.com/registration?mode=register&from=tech&retpath=https%3A%2F%2Ftech.yandex.com%2Fkeys%2Fget%2F%3Fservice%3Dtrnsl

Second run in you application

```ruby
yandex = TranslateYandex::Yandex.new YOUR_API_KEY
```
Now you can use the methods with your object yandex like:

```ruby
yandex.translate "Hello World", "ru"
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/leonardoscorza/translate_yandex.
