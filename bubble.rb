=begin
first_array = [5, 9, -3, -2, 4, 1]

 print first_array

 def bubble_sort(arr)
   k = arr.length
   while k > 0
     n = 0
     while n < arr.length
         if arr[n + 1] != nil && arr[n] > arr[n + 1]
             arr[n], arr[n + 1] = arr[n + 1], arr[n]
         end
         n += 1
     end
     k -= 1
   end
   print arr
 end

bubble_sort(first_array)
=end

second_array = %w[heelloo hi hello hey h]

def bubble_sort_by(arr)
    k = arr.length
    while k > 0
        n = 0
        while n < arr.length
            if  arr[n + 1] != nil && yield(arr[n], arr[n + 1]) > 0 
                arr[n], arr[n + 1] = arr[n + 1], arr[n]
            end
            n += 1
        end
        k -= 1
    end
    print arr
end

bubble_sort_by(second_array) do |a, b|
    a.length - b.length
end





