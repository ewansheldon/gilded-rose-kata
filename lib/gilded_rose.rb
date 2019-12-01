require_relative 'normal'
require_relative 'aged_brie'
require_relative 'sulfuras'
require_relative 'backstage_passes'

class GildedRose
  attr_reader :name, :days_remaining, :quality

  def klass_for(name)
    klasses = {
      "Normal Item" => Normal,
      "Aged Brie" => AgedBrie,
      "Sulfuras, Hand of Ragnaros" => Sulfuras,
      "Backstage passes to a TAFKAL80ETC concert" => BackstagePasses,
    }
  end

  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
    @klass = klass_for[name]
  end

  def normal_tick
    @days_remaining -= 1
    return if @quality <= 0
    @quality -= 1
    @quality -= 1 if @days_remaining <= 0
  end

  def aged_brie_tick
    @days_remaining -= 1
    return if @quality >= 50
    @quality += 1
    @quality += 1 if @days_remaining < 0 && @quality < 50
  end

  def sulfuras_tick
  end

  def backstage_tick
    @days_remaining -= 1
    return if @quality >= 50

    @quality += 1
    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 5
    @quality = 0 if @days_remaining < 0
  end

  def tick
    case name
    when "Normal Item"
      return normal_tick
    when "Aged Brie"
      return aged_brie_tick
    when "Sulfuras, Hand of Ragnaros"
      return sulfuras_tick
    when "Backstage passes to a TAFKAL80ETC concert"
      return backstage_tick
    end
  end
end
