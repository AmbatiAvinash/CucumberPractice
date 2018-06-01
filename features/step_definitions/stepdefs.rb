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
   def is_it_friday?(day)
	 # 'Nope'
	 if day == "Friday"
	  return "Yay"
	 elsif day == "Sunday"
	 return "Nope"
	 else
	 return "Neither Friday Nor Sunday "
	 end 	
   end

   def is_it_friday1?(day)
	 # 'Nope'
	 if day == "Friday"
	  return "Yay"
	 elsif day == "Sunday"
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
   expect(@actual_answer).to eq(expected_answer)
 end



 Given("today is Sunday1") do
   @today = 'Sunday'
 end

 Given("today is Friday1") do
   @today = 'Friday'
 end


 When("I ask whether it's Friday yet1") do
   @actual_answer = is_it_friday1?(@today)
 end

 Then("I should be told1 {string}") do |expected_answer|
   expect(@actual_answer).to eq(expected_answer)
 end


 # When("I ask whether it's Sunday yet") do
 #   @actual_answer = is_it_friday?(@today)
 # end

 # Then("I should be told {string}") do |expected_answer|
 #   expect(@actual_answer).to eq(expected_answer)
 # end

# def is_it_friday?(day)
#   'Nope'
# end
