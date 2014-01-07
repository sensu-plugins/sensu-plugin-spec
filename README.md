The test suite for testing various implementations of `sensu-plugin` in different languages.

## Installation

```
gem install sensu-plugin-spec
```

## Usage

``` shell
bundle install
bundle exec ./bin/sensu-plugin-spec
```

Which will output something along the lines of:

```
Run options: --seed 59897

# Running:

........

Finished in 2.082529s, 3.8415 runs/s, 3.8415 assertions/s.

8 runs, 8 assertions, 0 failures, 0 errors, 0 skips
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/sensu-plugin-spec/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
