def n_times(number)
  1.upto(number) do |n|
    if block_given?
      yield n
    else
     puts 'no block given!'
    end
  end
end

n_times(5) do |n|
  puts n
end
