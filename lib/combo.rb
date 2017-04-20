
class Fixnum
  define_method(:coin_return) do
    final_arr = []
    working_num = self

    quarter_back = 0
    dimebag_back = 0
    nickel_back = 0
    pennywise_back = 0

    coin_hash = {
      25 => "quarters",
      10 => "dimes",
      5 => "nickels",
      1 => "pennies"
    }

    if ((working_num / 25) >= 1)
      quarter_back = (working_num / 25).floor()
      final_arr.push(quarter_back.to_s)
      final_arr.push(coin_hash[25])
      working_num = (working_num - (quarter_back * 25))
    end

    if ((working_num / 10) >= 1)
      dimebag_back = (working_num / 10).floor()
      final_arr.push(dimebag_back.to_s)
      final_arr.push(coin_hash[10])
      working_num = (working_num - (dimebag_back * 10))
    end

    if ((working_num/ 5) >= 1)
      nickel_back = (working_num / 5).floor()
      final_arr.push(nickel_back.to_s)
      final_arr.push(coin_hash[5])
      working_num = (working_num - (nickel_back * 5))
    end

    if ((working_num % 5) > 0)
      pennywise_back = (working_num % 5)
      final_arr.push(pennywise_back.to_s)
      final_arr.push(coin_hash[1])
    end

    final_arr.join(" ")
  end
end


# counter = 1
# until counter.==(user_num)
#   user_num %
#
#   counter = counter.+(1)
# end

# [1,2,3,4] = ([6,7,8,9]) + 5)
# [1,2,3,4] = ([11,12,13,14]+10)
