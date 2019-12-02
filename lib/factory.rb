require_relative 'normal'
require_relative 'aged_brie'
require_relative 'sulfuras'
require_relative 'backstage_passes'
require_relative 'conjured_mana'

class Factory
  def self.klass_for(name)
    klasses = {
      "Aged Brie" => AgedBrie,
      "Sulfuras, Hand of Ragnaros" => Sulfuras,
      "Backstage passes to a TAFKAL80ETC concert" => BackstagePasses,
      "Conjured Mana Cake" => ConjuredMana
    }

    return klasses[name] || Normal
  end
end
