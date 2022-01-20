class WithdrawAmountService
	DENOMINATION = {'Quarter' => 25, 'Dime' => 10, 'Nickel' => 5,'Penny' => 1 }

	def initialize(amount)
		@amount = amount
	end

	def withdraw
    if validate_amount
    	evaluate_denomination
    else
      raise UnableToWithdraw
    end
	end

	private

	def validate_amount
		(@amount&.is_a? Integer) && @amount > 0
	end

	def evaluate_denomination
		new_denom = Hash.new
		DENOMINATION.each do |denomination, denom_amount|
 	  	if @amount >= denom_amount
 	  		new_denom[denomination] = @amount / denom_amount
 	  		@amount = @amount - (new_denom[denomination] * denom_amount)
   		end
 		end
 		new_denom
	end
end

class UnableToWithdraw < StandardError
end
