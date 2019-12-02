require_relative 'factory'
require_relative 'normal'
require_relative 'aged_brie'
require_relative 'sulfuras'
require_relative 'backstage_passes'
require_relative 'conjured_mana'

class GildedRose
  attr_reader :item

  def initialize(name:, days_remaining:, quality:)
    opts = {days_remaining: days_remaining, quality: quality}
    @item = Factory.klass_for(name).new(opts)
  end

  def tick
    item.tick
  end

  def days_remaining
    item.days_remaining
  end

  def quality
    item.quality
  end
end
