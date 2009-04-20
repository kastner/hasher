require File.expand_path(File.dirname(__FILE__) + '/../lib/primes')

class Hasher
  def initialize(size)
    raise NonPrimeContainer unless FIRST_1K_PRIMES.include?(size)
    @size = size
  end
  
  def hash(input, length=input.length)
    hash = 0
    length.times do |i|
      new_hash = hash << 0x7 ^ input[i]
      overflow = hash >> 0x15 & 0x1fc
      hash = new_hash ^ overflow
    end
    hash &= 0x7fffffff
    hash % @size
  end
  
  class NonPrimeContainer < StandardError; end
end