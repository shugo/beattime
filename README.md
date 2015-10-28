# beattime
Swatch Internet Time Library for Ruby

## Usage

### As a library

    require "beattime"

    using BeatTime

    bt = Time.now.to_beat # convert a Time to a beat time represented by Rational
    t = Time.parse_beat("@393.98") # parse a beat time

### As a command

#### Print the current beat time

    $ beattime.rb
    @393.98

#### Parse a beat time, and print it in ISO 8601 format

    $ beattime.rb @393.98
    17:27:19

#### Most useful usage

    $ beattime.rb `beattime.rb`
    17:27:19
