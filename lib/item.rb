module Item
  def initialize(name:, days_remaining:, quality:)
    @name = name
    @days_remaining = days_remaining
    @quality = quality
    @klass = klass_for(name)
  end
end
