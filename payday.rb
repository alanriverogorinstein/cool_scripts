#!/usr/bin/env ruby

# Running ruby payday.rb tells you how many days are left until
# payday, or if it's payday, it tells you so.

puts "Hello, Payday"

DAYS_IN_PAY_PERIOD = 14
SECONDS_IN_A_DAY = 24 * 60 * 60

matching_date = Time.local(0, 0, 0, 30, 7, 2021, 5, 211, true, "PDT")
current_date = Time.new()

difference_in_seconds = (current_date - matching_date)
difference_in_days = (difference_in_seconds / SECONDS_IN_A_DAY)

days_to_wait = (DAYS_IN_PAY_PERIOD - difference_in_days) % DAYS_IN_PAY_PERIOD

if days_to_wait.zero?
  puts "Today is payday!"
elsif days_to_wait == 1
  puts "Payday is tomorrow"
else
  puts "Payday is in #{days_to_wait} days."
end
