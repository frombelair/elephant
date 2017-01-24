def subtotal_cal(price,quatity)
	price.to_f * quatity.to_f
end

def discount(grand_total)
	if grand_total > 999
		if grand_total >=1000 && grand_total <=4999
			discount_rate = 0.03
		elsif grand_total >=5000 && grand_total <=6999
			discount_rate = 0.05
		elsif grand_total >=7000 && grand_total <=9999
			discount_rate = 0.1
		elsif grand_total >= 10000 && grand_total <=50000
			discount_rate = 0.12
		end
	else
		total_discount = 0
    end
end				
	def tax_rate(tax_code)
	if tax_code == "UT"
	tax_rate == 0.0685
	elsif tax_code == "NV"
		tax_rate == 0.08
	elsif tax_code == "TX"
		tax_rate == 0.0625
	elsif tax_code == "AL"
		tax_rate == 0.04
	elsif tax_code == "CA"
		tax_rate == 0.0825
	end
end
quatity = 0
price = 0
subtotal = 0
grand_total = 0
discount_rate = 0
tax_rate = 0
total_discount = 0
tax_code = ""
sales_tax = 0
continue = true

while continue == true
	puts " please enter the price "
	price = gets.chomp

	puts " please enter the quatity "
	quantity = gets.chomp

	if quantity.to_f == 0
		continue = false
	end
	puts "The quantity is = #{quantity}, and The price is = #{price} and The subtotal is = #{subtotal}"
end
puts """
Please enter your state tax tax_code
UT   Utah
NV   Nevada
TX   Texas
AL   Alabama
CA   California
"""
tax_code = gets.chomp.upcase
puts tax_code

total_discount = discount(grand_total)
puts "Total before discount #{grand_total}"
grand_total = grand_total - discount(grand_total)
puts "Total discount #{total_discount}"
puts " Total after discount #{grand_total}"

sales_tax = grand_total * tax_rate(tax_code)
puts "sales tax total is #{sales_tax}"
puts "Final Total #{grand_total + sales_tax}"




			
			
								
