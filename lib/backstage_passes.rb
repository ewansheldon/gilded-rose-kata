class BackstagePasses
  attr_reader :days_remaining, :quality

  def initialize(opts)
    @days_remaining = opts[:days_remaining]
    @quality = opts[:quality]
  end

  def tick
    @days_remaining -= 1
    return if @quality >= 50

    @quality += 1
    @quality += 1 if @days_remaining < 10
    @quality += 1 if @days_remaining < 5
    @quality = 0 if @days_remaining < 0
  end
end
