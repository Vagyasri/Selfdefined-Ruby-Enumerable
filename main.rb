module Enumerable
    def my_each(array)
        i = 0
        while i < array.length
            if block_given?
            yield array[i]
            i += 1
            end
        end
        array   
    end
  end