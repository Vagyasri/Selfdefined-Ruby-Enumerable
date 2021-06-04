module Enumerable
  def my_each
    if block_given?
      to_a.length.times { |i| yield to_a[i] }
    else
      to_enum
    end
  end
end

# my_hash = {min: 2, max: 5}
# puts my_hash.my_each
# my_hash = {min: 2, max: 5}
# my_hash.my_each { |key, value| puts "k: #{key}, v: #{value}" }
# my_list = [1, 2, 3, 4 ,5]
# [3..-1].my_each { |i| puts i }
# my_list[3..-1].my_each { |i| puts i }
