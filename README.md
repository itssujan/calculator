# Calculator

Perform calculations

## Requirements

- There must be a function for each number from 0 (“zero”) to 9 (“nine”)
- There must be a function for each of the following mathematical operations: plus, minus, times, divided_by
- Each calculation consist of exactly one operation and two numbers
- The most outer function represents the left operand, the most inner function represents the right operand

Examples

```ruby
six(times(five)) # must return 30
one(plus(nine)) # must return 10
six(minus(three)) # must return 3
eight(divided_by(two)) # must return 4
```

## System Requirements

- Ruby 2+ ( Developed and tested using ruby 2.3x )
- Bundler 2.x (Install using `gem install bundler`)

## Installation

Clone this repo to your local machine and execute this command

```ruby
$ bundle install
```

## Usage

Navigate to the project directory

```ruby
$ irb
$ require './lib/calculator'
$ one(plus(two))
```

Try out calculations

![alt tag](https://i.imgur.com/FYIRNdd.png "Few examples")

## Tests

Run this command to run specs

```
    $ rspec
```

## Rubocop

Run this command to run rubocop

```
    $ rubocop
```

## Design Considerations

1. Object class has been used so that the methods can be executed directly
2. This can also be defined as a Module so that it can be included in a class and called in the form of one(plus(two))

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/itssujan/calculator.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
