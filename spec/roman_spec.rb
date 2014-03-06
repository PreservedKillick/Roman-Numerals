require ("rspec")
require ("roman_numerals")

describe("roman_numerals") do 
  it("if number is equal to a single Roman Numeral value return its Letter") do
    roman_numerals(5).should(eq("V"))
  end
  it("should convert 2 into the Roman Numeral II") do 
    roman_numerals(2).should(eq("II"))
  end 
  it("should convert 18 into the Roman Numeral XVIII") do
    roman_numerals(18).should(eq("XVIII"))
  end
end
