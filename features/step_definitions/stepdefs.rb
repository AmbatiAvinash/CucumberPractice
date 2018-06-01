# Given("today is Sunday") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# When("I ask whether it's Friday yet") do
#   pending # Write code here that turns the phrase above into concrete actions
# end

# Then("I should be told {string}") do |string|
#   pending # Write code here that turns the phrase above into concrete actions
# end


 module FridayStepHelper
 	#Method for friday finder
	def is_it_friday?(day)
		# 'Nope'
		if day == "Friday"
	 		return "Yay"
		elsif day =="Sunday"
			return "Nope"
		else
			return "Neither Friday Nor Sunday "
		end 	
	end

 end



 World FridayStepHelper

 Given("today is Sunday") do
   @today = 'Sunday'
 end

 Given("today is Friday") do
   @today = 'Friday'
 end

 When("I ask whether it's Friday yet") do
   @actual_answer = is_it_friday?(@today)
 end

 Then("I should be told {string}") do |expected_answer|
   expect(@actual_answer ).to eq(expected_answer)
 end



 module HolidayHelper
   		#Method for holiday helper
	def is_today_holiday?(day)
		# 'Nope'
		if day == "Thursday"
			return "Nope"
		elsif day =="Saturday"
			return "Yes!It's Saturday and Holiday"
		else
			return "Neither Thursday Nor Saturday "
		end
	end

 end

 

 World HolidayHelper 

 Given("today is Saturday") do
   @today = 'Saturday'
 end

 Given("today is Thursday") do
   @today = 'Thursday'
 end
 When("I ask whether it's holiday") do
   @actual_answer = is_today_holiday?(@today)
 end

 Then("I should be told1 {string}") do |expected_answer|
   expect(@actual_answer).to eq(expected_answer)
 end
