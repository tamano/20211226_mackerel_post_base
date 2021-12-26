require './mackerel_custom_metric_base.rb'

class GeneralSample < MackerelCustomMetricBase
  def collect
    puts 'collect you own data'
  end
end

GeneralSample.new.exec