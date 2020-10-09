first_array = [5, 9, -3, -2, 4, 1]

def bubble_sort(arr)
  k = arr.length
  while k.positive?
    n = 0
    while n < arr.length
      arr[n], arr[n + 1] = arr[n + 1], arr[n] if !arr[n + 1].nil? && arr[n] > arr[n + 1]
      n += 1
    end
    k -= 1
  end
  arr
end

p bubble_sort(first_array)
second_array = %w[heelloo hi hello hey h]

def bubble_sort_by(arr)
  k = arr.length
  while k.positive?
    n = 0
    while n < arr.length
      arr[n], arr[n + 1] = arr[n + 1], arr[n] if !arr[n + 1].nil? && yield(arr[n], arr[n + 1]).positive?
      n += 1
    end
    k -= 1
  end
  arr
end

bubble_sort_by(second_array) do |a, b|
  a.length - b.length
end
