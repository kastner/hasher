require File.expand_path(File.dirname(__FILE__) + '/../lib/primes')

class Hasher
  def initialize(size)
    raise NonPrimeContainer unless FIRST_1K_PRIMES.include?(size)
    @size = size
  end
  
  def hash(input)
    rcx = 0
    input.length.times {|i|
      rdx = rcx
      rdx <<= 0x7
      rax = input[i]
      rdx ^= rax
      rax = rcx
      rax >>= 0x15
      rax &= 0x1fc
      rcx = rdx
      rcx ^= rax
    }
    rcx &= 0x7fffffff
    rcx % @size
  end
  
  class NonPrimeContainer < StandardError; end
end