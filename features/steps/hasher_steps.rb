Given /^a hash container size of (\d+)$/ do |size|
  @hasher = Hasher.new(size)
end

When /^the method hash is invoked with (.+?)$/ do |string|
  @output = @hasher.hash(string)
end

Then /^the number (\d+) is returned$/ do |result|
  @output.should == result.to_i
end
