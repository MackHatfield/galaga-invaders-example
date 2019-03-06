=begin
Reflecting on Principle
1) How are Ruby modules (and similar features from other langs)
   different from a class, in their purpose?
   They are different in that they allow various classes to have access to shared behavior, or be able
   to share a role defined in a module without inheritance.
2) What is LSP?
  It is the the Liskov substitution principle. It basically means that any subclass should
  be able to be substituted for it's superclass. In the case of modules any class that includes a
  module should be able to be substituted as that module.
3) Briefly describe how the template method pattern works.
    A super class or module is where an abstract algorithm is defined and sub classes
    or those that include a module, override methods where they need to in order to
    satisfy their specializations
=end
