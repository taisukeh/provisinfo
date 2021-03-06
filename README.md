# Provisinfo

Welcome to provisinfo Gem! It a CLI tool and a ruby library to extract metadata information (name, UUId, AppID, type) from binary .mobileprovision files (a kind of .plist file). Also, it can be used to validate matching between provisioning files and .P12 certificates.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'provisinfo'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install provisinfo

## Usage
It can be used like a CLI client:
    
    provisinfo info --filename p1.mobileprovision   

    provisinfo validate --provisioning p1.mobileprovision --certificate cert.p12

Or you can use in your code:

    p1 = Provisioning.new('prov1.mobileprision')
    #show human readable information
    p1.show_info() 
    
    #access to any property
    p1.appID
    puts p1.expirationDate < DateTime.now ? "Expired" : "Active"
    
    # make a matching validation
	if p1.matches_certificate?('3WKJWX.p12','')
      puts_message(RED, "error", "Provisioning profile was not signed with provided certificate.")
    else
      puts_message(GREEN, "passed", "Provisioning profile matches certificate file.")
    end

    
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/osrufung/provisinfo/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
