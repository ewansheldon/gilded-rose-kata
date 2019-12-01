require_relative 'normal'
require_relative 'aged_brie'
require_relative 'sulfuras'
require_relative 'backstage_passes'
require_relative 'conjured_mana'

class GildedRose
  attr_reader :item

  def initialize(name:, days_remaining:, quality:)
    opts = {days_remaining: days_remaining, quality: quality}
    @item = klass_for(name).new(opts)
  end

  def klass_for(name)
    klasses = {
      "Aged Brie" => AgedBrie,
      "Sulfuras, Hand of Ragnaros" => Sulfuras,
      "Backstage passes to a TAFKAL80ETC concert" => BackstagePasses,
      "Conjured Mana Cake" => ConjuredMana
    }

    return klasses[name] || Normal
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
