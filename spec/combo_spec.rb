require('rspec')
require('combo')

describe() do

  it("returns the number of pennies for the input") do
    expect(4.coin_return()).to(eq("4 pennies"))
  end

  it("returns the number of nickels for the input") do
    expect(5.coin_return()).to(eq("1 nickels"))
  end

  it("returns the number of nickels for the input") do
    expect(9.coin_return()).to(eq("1 nickels 4 pennies"))
  end

  it("returns the number of nickels for the input") do
    expect(10.coin_return()).to(eq("1 dimes"))
  end

  it("returns the number of nickels for the input") do
    expect(17.coin_return()).to(eq("1 dimes 1 nickels 2 pennies"))
  end


end
