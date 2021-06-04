module Enumerable
  def my_each
    if block_given?
      to_a.size.times { |i| yield to_a[i] }
    else
      to_enum
    end
  end

  # my_hash = {min: 2, max: 5}
  # puts my_hash.my_each
  #  my_hash = {min: 2, max: 5}
  #  my_hash.my_each { |key, value| puts "k: #{key}, v: #{value}" }
  #  my_list = [1, 2, 3, 4 ,5]
  #  [3..-1].my_each { |i| puts i }
  #  my_list[3..-1].my_each { |i| puts i }

  def my_each_with_index
    if block_given?
      to_a.size.times { |i| yield to_a[i], i }
    else
      to_enum
    end
  end
end

# ['a', 'b', 'c'].my_each_with_index { |el, i| puts i }
# [1, 2, 3].my_each_with_index { |(k, v), i| puts i }
# top_10 = ["Walmart", "Exxon Mobil", "Apple", "Berkshire Hathaway", "Amazon.com", "UnitedHealth Group", "McKesson"]
#   top_10.my_each_with_index do | company, index |
#     puts "#{index}. #{company}"
#   end
#   top_10.my_each.with_index(1) do | company, index |
#     puts "#{index}. #{company}"
#   end
