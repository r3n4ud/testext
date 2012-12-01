/* */
#include <ruby.h>

/* our new native method; it just returns
 * the string "bonjour!" */
static VALUE testext_bonjour(VALUE self) {
  return rb_str_new2("bonjour!");
}

/* ruby calls this to load the extension */
void Init_testext(void) {
  /* assume we haven't yet defined Hola */
  VALUE rb_mTestext = rb_define_module("Testext");
  VALUE rb_cTestext = rb_define_class_under(rb_mTestext, "Testext", rb_cObject);

  /* the testext_bonjour function can be called
   * from ruby as "Testext::Testext.bonjour" */
  rb_define_singleton_method(rb_cTestext, "bonjour", testext_bonjour, 0);
}
