def recursive_fib(n)
  return n if [0,1].include? n
  recursive_fib(n-2) + recursive_fib(n-1)
end 

def iterative_fib(n)
  array =[0,1]
  2.upto(n) do |num|
    array << (array[num-2] + array[num-1])
  end
  array[n]
end

require 'benchmark'
n = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(n) }
  x.report("iterative_fib")  { iterative_fib(n)  }
end

puts recursive_fib(n)
puts iterative_fib(n)