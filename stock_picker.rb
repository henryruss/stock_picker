def stock_picker(price_array)
  # Initialize variables to track the best buy and sell days
  max_profit = 0
  best_days = []

  # Iterate over all pairs of buy (start_index) and sell (end_index) days
  price_array.each_with_index do |_, start_index|
    (start_index + 1...price_array.size).each do |end_index|
      # Calculate the profit for the current pair of buy/sell days
      profit = price_array[end_index] - price_array[start_index]

      # Update max_profit and best_days if a higher profit is found
      if profit > max_profit
        max_profit = profit
        best_days = [start_index, end_index]
      end
    end
  end

  best_days
end


puts stock_picker([17,3,6,9,15,8,6,1,10])
