define_method(:coin_return) do |working_num|
  final_arr = []
  working_num = working_num.to_i
  quarter_back = 0
  dimebag_back = 0
  nickel_back = 0
  pennywise_back = 0

  if ((working_num / 25) >= 1)
    quarter_back = (working_num / 25).floor()
    final_arr.push(quarter_back.to_s)
    final_arr.push("quarters")
    working_num = (working_num - (quarter_back * 25))
  end
  if ((working_num / 10) >= 1)
    dimebag_back = (working_num / 10).floor()
    final_arr.push(dimebag_back.to_s)
    final_arr.push("dimes")
    working_num = (working_num - (dimebag_back * 10))
  end
  if ((working_num/ 5) >= 1)
    nickel_back = (working_num / 5).floor()
    final_arr.push(nickel_back.to_s)
    final_arr.push("nickels")
    working_num = (working_num - (nickel_back * 5))
  end
  if ((working_num % 5) > 0)
    pennywise_back = (working_num % 5)
    final_arr.push(pennywise_back.to_s)
    final_arr.push("pennies")
  end

  final_arr.join(" ")
end
