require 'benchmark/ips'
collection = ['a', 'b', 'c', 'd']
Benchmark.ips do |x|
  x.report 'normal' do
    collection.map { |x| x.upcase }
  end
  x.report 'to_proc' do
    collection.map { |x| x.upcase }
  end
  x.compare!
end
