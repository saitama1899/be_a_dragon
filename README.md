# Be A Dragon

Motivational sentences to help you code in peace.

Your code does not work as it should? You have only one spec to correct and you want to sleep?
Does Rubocop mistreat you? Need some extra motivational push to finish that f*** code? This is your gem.

## Installation

Add this to your application's Gemfile:

```ruby
gem 'be_a_dragon'
```

And then add some simple CRON worker gem like 

```ruby
gem 'rufus-scheduler'
```

Run:

    $ bundle install


## Usage

Make a new file on initalizers folder:
```ruby
# initializers/motivational-cron.rb
require 'rufus-scheduler'

scheduler = Rufus::Scheduler.new
motivation = BeADragon::MotivateMePls

scheduler.cron '* * * * *' do
  motivation.random_sentence('Eric')
end
```

Custom cron times at https://crontab.guru/

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/be_a_dragon.

