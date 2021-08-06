#!/usr/bin/env ruby

# Adds a handy .true? and .false? methods to any object.

class Object

  def false?
    not self
  end

  def true?
    not false?
  end

  alias :to_b :true?

end
