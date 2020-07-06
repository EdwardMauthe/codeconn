#require 'foobar'

#include RubyGuides
#print_hello

# this works, above did not
require_relative 'foobar'
include RubyGuides
q=return_nil
raise "nope" unless q==nil
