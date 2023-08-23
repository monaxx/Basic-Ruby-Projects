def bubble_sort(arr_price)
  for i in 0...arr_price.length
    for j in 0...(arr_price.length - 1 - i)
      if arr_price[j] > arr_price[j + 1]
        temp = arr_price[j]
        arr_price[j] = arr_price[j + 1]
        arr_price[j + 1] = temp
      end
    end
  end
  
  arr_price
end

p bubble_sort([4,3,78,2,0,2])