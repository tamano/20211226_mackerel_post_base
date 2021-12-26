class MackerelCustomMetricBase
  def collect
    raise NotImplementedError
  end

  def send(name, value)
    raise NotImplementedError
  end

  def exec
    send(self.class.name, collect)
  end
end
