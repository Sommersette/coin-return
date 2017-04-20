
class Fixnum
  define_method(:coin_return) do
    final_arr = []
    user_num = self

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

    if ((user_num / 5) >= 1)
      nickel_back = (user_num / 5).floor()
      final_arr.push(nickel_back.to_s)
      final_arr.push(coin_hash[5])
    end

    if ((user_num % 5) > 0)
      pennywise_back = (user_num % 5)
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
