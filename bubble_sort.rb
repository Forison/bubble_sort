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
 puts bubble_sort(s)