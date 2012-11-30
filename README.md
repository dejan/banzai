# Banzai

Simple toolkit for processing input using filter/pipeline concept.

## Installation

Add this line to your application's Gemfile:

    gem 'banzai'

## Usage

First, implement some filters:

```ruby
class GaussianBlur < Banzai::Filter
  def apply(input)
    # ... filter implementation ...
  end
end 

class Nostalgia < Banzai::Filter
  def apply(input)
    # ... filter implementation ...
  end
end
```

Then you can apply them to some input 

```ruby
# same as GaussianBlur.new.apply(image)
GaussianBlur.apply(image)

# if you need to pass same filter options
GaussianBlur.new(radius:1.1).apply(image)
```

Or if you want to apply multiple filter to an image create pipeline:

```ruby
# note that you can combine classes and instances
blurred_effect = Banzai::Pipeline.new [GaussianBlur.new(radius:1.1), Nostalgia] 
blurred_effect.apply(image)
```

Pipeline is just another filter, so you can mix them too into a new
pipeline:
```ruby
Banzai::Pipeline.new [blurred_effect, RoundCorners.new(radius:0.87)] 
```

## Licence

Copyright (c) 2012 Dejan Simic

MIT License

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
