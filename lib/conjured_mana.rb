class ConjuredMana
  attr_reader :days_remaining, :quality

  def initialize(opts)
    @days_remaining = opts[:days_remaining]
    @quality = opts[:quality]
  end

  def tick
    @days_remaining -= 1
    return if @quality <= 0

    @quality -= 2
    @quality -= 2 if @days_remaining <= 0
  end
end
