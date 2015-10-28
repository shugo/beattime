#!/usr/bin/env ruby

module BeatTime
  refine Time do
    def to_beat
      1000 * ((to_r + 60 * 60) % (24 * 60 * 60)) / (24 * 60 * 60)
    end
  end

  refine Time.singleton_class do
    def from_beat(b)
      Time.at(b / 1000 * (24 * 60 * 60) - 60 * 60)
    end

    def parse_beat(s)
      from_beat(s.delete("@").to_r)
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
