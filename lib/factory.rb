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
