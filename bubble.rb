first_array = [5, 9, -3, -2, 4, 1]

print first_array

def bubble_sort(arr)
  k = arr.length
  while k.positive?
    n = 0
    while n < k
      arr[n], arr[n + 1] = arr[n + 1], arr[n] if !arr[n + 1].nil? && arr[n] > arr[n + 1]
      n += 1
    end
    k -= 1
  end
  print arr
end

bubble_sort(first_array)

second_array = %w[hi hello hey]

def bubble_sort_by(arr)
  n = 0
  while n < arr.length
    arr[n], arr[n + 1] = arr[n + 1], arr[n] if !arr[n + 1].nil? && (arr[n].length - arr[n + 1].length).positive?
    n += 1
  end
  print arr
end

bubble_sort_by(second_array)

second_array = %w[hi hello hey]

def one_yield()
  yield
end

one_yield { puts second_array }

bubble_sort_by(%w[hi hello hey]) do |left, right|
  left.length - right.length
end

#     n = 0
#     if r > 0
#         # result negative means left greater then swap
#         arr[n], arr[n + 1] = arr[n + 1], arr[n]
#         # result positive means left smaller then do nothing
#         # result 0 means both are equal then do nothing
