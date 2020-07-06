#include "ruby.h"
#include "extconf.h"

/*
// this will compile
void Init_foobar()
{
  // Your C code goes here
}
*/

VALUE rb_return_nil()
{
	return Qnil;
}
void Init_foobar()
{
	VALUE mod = rb_define_module("RubyGuides");
	rb_define_method(mod,"return_nil",rb_return_nil,0);
}
