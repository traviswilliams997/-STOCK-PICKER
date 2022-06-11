def calculate_profit(maxprice, price)
  maxprice - price
end
def stock_picker(prices)
  highest_profit_each_day = Array.new()
  highest_profit_each_day_pair = Array.new()
  prices.each_with_index do |price, day|
    if(day != prices.length - 1 )
      remaining_prices = prices.slice(day + 1, prices.length - 1) 
      max = remaining_prices.max()
      highest_profit_for_today = calculate_profit(max, price)
      highest_profit_each_day.push(highest_profit_for_today) 
      highest_profit_each_day_pair.push([day, prices.find_index(max)])
    end
  end
  maximum_profit = highest_profit_each_day.max()
  maximum_profit_day_pair_index = highest_profit_each_day.each_index.select{|i| highest_profit_each_day[i] == maximum_profit}
  maximum_profit_day_pair_index.each do |index|
    p highest_profit_each_day_pair[index]
  end
end

  stock_picker([17,3,6,9,15,8,6,1,10])
