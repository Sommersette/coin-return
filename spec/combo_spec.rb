require('rspec')
require('combo')

describe() do

  it("returns the number of pennies for the input") do
    expect(coin_return(4)).to(eq("4 pennies"))
  end

  it("returns the number of nickels for the input") do
    expect(coin_return(5)).to(eq("1 nickels"))
  end

  it("returns the number of nickels for the input") do
    expect(coin_return(9)).to(eq("1 nickels 4 pennies"))
  end

  it("returns the number of nickels for the input") do
    expect(coin_return(10)).to(eq("1 dimes"))
  end

  it("returns the number of nickels for the input") do
    expect(coin_return(17)).to(eq("1 dimes 1 nickels 2 pennies"))
  end

  it("returns the number of nickels for the input") do
    expect(coin_return(25)).to(eq("1 quarters"))
  end

  it("returns the number of nickels for the input") do
    expect(coin_return(66)).to(eq("2 quarters 1 dimes 1 nickels 1 pennies"))
  end

end
