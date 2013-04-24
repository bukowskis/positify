[![Build Status](https://travis-ci.org/bukowskis/positify.png)](https://travis-ci.org/bukowskis/positify)

# Positify

Makes anything positive.

# Installation

```ruby
gem install positify
```

# Examples

```ruby
Positify.it(-5)          #=> 5
Positify.it(0)           #=> 1
Positify.it('huh?')      #=> 1
Positify.it(Weirdo.new)  #=> 1
Positify.it(5.9)         #=> 5

Positify.it(30, max: 22)     #=> 22
Positify.it(max: 25) { 30 }  #=> 25
```
