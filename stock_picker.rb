

# Returns [nil, nil] if no profitable days are found
def stock_picker(arr)
  max_profit = Array.new(2, 0)
  
  if arr.length <= 1 || arr.all? { |element| element == arr[0]} 
    return [nil, nil]
  end
  
  for i in 0...arr.length
    arr_slice = arr[i + 1, arr.length]
    
    if arr_slice.empty?
      break
    end 
    
    for j in 0...arr_slice.length
      if (arr_slice[j] - arr[i]) > (max_profit[1] - max_profit[0])
        max_profit[0..1] = [arr[i], arr_slice[j]]
      end
    end
  end
  
  return max_profit[0,2] = [arr.index(max_profit[0]), arr.index(max_profit[1])]
  
end

p stock_picker([17,3,6,9,15,8,6,1,10])

