require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts ">> #{message}"
end

def valid_number?(num)
  num.to_f() > 0 # How can this deem a string as invalid?  
end


prompt("Welcome to the Car Loan Calculator! Please enter your name:")
name = gets.chomp

loop do
  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end


prompt("Welcome #{name}, first we're going to collect some data")

loan_amount = ''

loop do
  prompt("What is your loan amount?")
  loan_amount = gets.chomp
  if valid_number?(loan_amount.to_f())
      break
  else
      prompt(MESSAGES['valid_number'])
  end
end

prompt("Awesome, now, what is your APR?")
apr = ' '

loop do
  apr = gets.chomp
  if valid_number?(apr.to_f())
      break
  else
      prompt(MESSAGES['valid_number'])
      prompt("What is your APR?")
  end
end

interest_r_months = (apr.to_f() / 1200) # Should it be at 1200 so that it can get an accurate decimal percentage number?


prompt("Thank you, #{name}. Now finally, what is your loan duration in years?")
loan_duration_years = ' '

loop do
  loan_duration_years = gets.chomp
  if valid_number?(loan_duration_years.to_f())
      break
  else
      prompt(MESSAGES['valid_number'])
      prompt("What is your loan duration?")
  end
end

loan_duration_months = (loan_duration_years.to_f() * 12)

monthly_payment = loan_amount.to_f() * 
                  (interest_r_months.to_f() / 
                  (1 - (1 + interest_r_months.to_f())**(-loan_duration_months.to_f())))

prompt("Monthly Interest Rate: #{(interest_r_months * 100).round(2)}%")
prompt("Loan Duration: #{loan_duration_months.to_i()} months")
prompt("Monthly Payment: $#{monthly_payment.round(2)} per month")
puts " "
prompt("Thank you for using the Auto Loan Calculator, #{name}! Goodbye!")
