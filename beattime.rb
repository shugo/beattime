#!/usr/bin/env ruby

module BeatTime
  refine Time do
    def to_beat
      1000 * ((to_r + 60 * 60) % (24 * 60 * 60)) / (24 * 60 * 60)
    end
  end

  refine Time.singleton_class do
    def parse_beat(s)
      Time.at(s.delete("@").to_r / 1000 * (24 * 60 * 60) - 60 * 60)
    end
  end
end

if __FILE__ == $0
  using BeatTime

  if ARGV.empty?
    printf("@%2.2f\n", Time.now.to_beat)
  else
    puts(Time.parse_beat(ARGV[0]).strftime("%H:%M:%S"))
  end
end
