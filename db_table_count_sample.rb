require './mackerel_custom_metric_base.rb'

class DbTableCountSample < MackerelCustomMetricBase
  def initialize(table_name, metric_name)
    super()
    @table = table_name
    @metric = metric_name
  end

  def collect
    # SELECT COUNT(*) FROM #{@table} してくれる
    raise NotImplementedError
  end

  def exec
    send(@metric, collect)
  end
end

DbTableCountSample.new('schema_a.tablename', 'db_count_a_tablename')
DbTableCountSample.new('schema_b.tablename2', 'db_count_b_tablename2')