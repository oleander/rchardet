# rCharDet*19*

## [Project Page](http://rubyforge.org/projects/rchardet) | [1.9 Author](https://github.com/edouard/rchardet) | [Original Author](https://github.com/jmhodges/rchardet)

*rCharDet* is a character encoding detection library for ruby and the implementation is based on Mozilla Charset Detectors. 

This is a forked project in a effort to make it Ruby 1.9 compatible.

Follow me on [Twitter](http://twitter.com/linusoleander) or [Github](https://github.com/oleander) for more info and updates.

### How to use

`CharDet.detect` takes the variable `data` that contains an unknown encoding.

We then try to change the encoding to UTF-8, but only if we are at least ~ 60% sure that we found the right encoding.

```` ruby
data = "Some unknown data"
cd = CharDet.detect(data)
data = cd.confidence > 0.6 ? Iconv.conv(cd.encoding, "UTF-8", data) : data
````

## What do I've to work with?

A struct is being returned from the `detect` method, it has the following accessors.

- **encoding** (String) Encoding of the ingoing string, `UTF-8` for example.
- **confidence** (Float) The confidence level of the *encoding*, from 0.0 to 1.0, where 1.0 is the best.

## Make it silent

The `detect` takes two arguments, the string to guess the encoding on and an option hash.

You can use the option hash de decide if you want the `detect` method to raise an exception or not if the ingoing string is `nil`.

```` ruby
CharDet.detect("some data", :silent => true) # Won't raise an exception
CharDet.detect(nil, :silent => true)         # Won't raise an exception
CharDet.detect(nil)                          # Will raise an exception
CharDet.detect(nil, :silent => false)        # Will raise an exception
````
   
## How do install

    [sudo] gem install rchardet19
    
## How to use it in a rails 3 project

Add `gem 'rchardet19'` to your Gemfile and run `bundle`.

## How to help

- Start by copying the project or make your own branch.
- Navigate to the root path of the project and run `bundle`.
- Start by running all tests using rspec, `rspec spec/rchardet19_spec.rb`.
- Implement your own code, write some tests, commit and do a pull request.

## Requirements

*rCharDet19* is tested in 
- OS X 10.6.6 using Ruby 1.8.7 and 1.9.2.
- Ubuntu 12.10 using Ruby 1.9.3 and 2.0.0-p0

## License

*rCharDet19* is released under the *MIT license*.
