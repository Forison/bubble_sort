def bubble_sort(array)
    n=array.size
    loop do
        swap=false
        (n-1).times do |i|
            if array[i] >array[i+1]
                array[i] ,array[i+1]=array[i+1],array[i]
                swap=true
            end
        end
        break if not swap
    end
    array
end

s=[4,3,78,2,0,2]
print bubble_sort(s)

def bubble_sort_by(arr)
  n = arr.size
  if block_given?
    loop do
      swapped = false
      (n-1).times do |i| 
        if yield(arr[i], arr[i+1]) > 0
            swapped = true
            arr[i], arr[i+1] = arr[i+1], arr[i]
        end
      end
      break if not swapped
    end
  end
  arr
end

r = ["hi", "hey", "hello"]
print bubble_sort_by(r) {|left, right| right.length <=> left.length}