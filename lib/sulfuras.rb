class Sulfuras
  attr_reader :days_remaining, :quality

  def initialize(opts)
    @days_remaining = opts[:days_remaining]
    @quality = opts[:quality]
  end

  def tick
  end
end
