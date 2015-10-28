# beattime
Swatch Internet Time Library for Ruby

## Usage

### Print the current beat time

    $ beattime.rb
    @393.98

### Parse a beat time, and print it in ISO 8601 format

    $ beattime.rb @393.98
    17:27:19

### Most useful usage

    $ beattime.rb `beattime.rb`
    17:27:19
