require 'treat'
include Treat::Core::DSL

require_relative 'treat/workers/extractors/summary'

Treat::Workers::Extractors::Summary.add(:dummy) do |word, options={}|
  word.to_s[0..-2]
end

puts 'dummy'.stem(:dummy)     # => dumm

