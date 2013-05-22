# MetricConversions
==========
These are a set of methods for length, volume, temperature, area and the like that help a user convert to or from English units to Metric units.  This was done as a class exercise in 67-275 at Carnegie Mellon University, with a pair of students tackling each of the submodules and writing the necessary tests.


Installation
------------
Installing this gem is pretty simple -- just type on the command line:

```  
$ gem install metric_conversions 
```

And add this gem into any other code with:

```  
require 'rubygems'
require 'metric_conversions' 
```


Usage
------------
There are currently four submodules to this gem:

* Lengths
* Volumes
* Temperatures
* Areas


### Lengths ###
... notes and explanation goes here ...

This module was built by <YOUR NAME HERE> and <YOUR NAME HERE>.


### Volumes ###
... notes and explanation goes here ...

This module was built by Jonathan Miller and Josh Gerbasi.

Usage: Instantiate a convertible volume by calling `MetricConversions.volume(<quantity>, <unit>)`
We currently have 3 methods available to the user
* `convert(unit)` receives a string that corresponds to other units that are able to converted, this is destructive.
* `to_s` prints the quantity and unit currently held by the Convertible object.
*  `to_what?` lists all the units that the Convertible object is able to be converted to.


### Temperatures ###
... notes and explanation goes here ...

This module was built by <YOUR NAME HERE> and <YOUR NAME HERE>.


### Areas ###
... notes and explanation goes here ...

This module was built by <YOUR NAME HERE> and <YOUR NAME HERE>.


### Note on tests ###

Each submodule of the gem has a set of basic tests associated with it.  The tests provide other examples of what is possible using this methods and may help the user further understand how this gem can be applied.  The testing suite requires the minitest gem to run properly.  Matt Sears has a nice quick reference guide for using minitest at: [http://mattsears.com/articles/2011/12/10/minitest-quick-reference](http://mattsears.com/articles/2011/12/10/minitest-quick-reference)


Contributing
------------
1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
