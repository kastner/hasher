Given /^a hash container size of (\d+)$/ do |size|
  @hasher = Hasher.new(size.to_i)
end

When /^the method hash is invoked with (.+?)$/ do |string|
  @output = @hasher.hash(string)
end

Then /^the number (\d+) is returned$/ do |result|
  @output.should == result.to_i
end

Given /^a hash container with a non\-prime size$/ do
  @size = 55
end

Then /^a (.+?) error should be raised$/ do |error|
  klass, exception = error.split(/::/)
  klass = Object.const_get(klass)
  lambda { Hasher.new(@size) }.should.raise(klass.const_get(exception))
end
