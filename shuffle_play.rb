#!/usr/bin/env ruby

class Array
  # Non-destructive, returns a copy of self, reordered randomly.
  def shuffle
    sort_by { rand }
  end

  def shuffle!
    replace(shuffle)
  end

  def random_element
    shuffle[0]
  end
end

class ShufflePlayer

  def initialize(files)
    @files = files
  end

  def play
    @files.shuffle.each { |file| play_file(file) }
  end

  private

  #Uses the afplayer audio player that comes with the Mac command line.
  def play_file(file)
    system("afplay #{file}")
  end
end

sp = ShufflePlayer.new(ARGV)
sp.play
