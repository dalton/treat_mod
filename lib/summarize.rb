require_relative 'treat/workers/extractors/summary'

require 'treat'
include Treat::Core::DSL


Treat::Workers::Extractors::Summary.add(:dummy) do |word, options={}|
  word.to_s[0..-2]
end

puts 'dummy'.summary(:dummy)     # => dumm

