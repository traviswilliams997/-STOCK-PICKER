def stock_picker(prices)
  highest_profit_each_day = Array.new()
  highest_profit_each_day_pair = Array.new()
  prices.each_with_index do |price, day|
    if(day != prices.length - 1 )
      new_array = prices.slice(day + 1, prices.length - 1) 
      max = new_array.max()
      highest_profit_for_today = max - price;
      highest_profit_each_day.push(highest_profit_for_today) 
      highest_profit_each_day_pair.push([day, prices.find_index(max)])
    end
  end
  maximum_profit = highest_profit_each_day.max()
  maximum_profit_day_pair_index = highest_profit_each_day.find_index(maximum_profit)   
  p highest_profit_each_day_pair[maximum_profit_day_pair_index]



end

  stock_picker([17,3,6,9,15,8,6,1,10])
