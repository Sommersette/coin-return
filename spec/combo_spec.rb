require('rspec')
require('combo')

describe() do

  it("returns the number of pennies for the input") do
    expect(4.coin_return()).to(eq("4 pennies"))
  end
  it("returns the number of nickels for the input") do
    expect(5.coin_return()).to(eq("1 nickels"))
  end


end
