# activity 1
def extract_hashtags(text)
    pattern = /(?:#(?!(?:\s|$)))(\w+)(?=\s|$)/i
    hashtags = text.scan(pattern)
    hashtags.flatten
  end
  
puts extract_hashtags("Love this #beautiful day! #sunny")

 
# activity 2
# must contain at least one uppercase, one lowercase
# one digit, and be 8 to 16 characters long
def valid_password?(password)
  pattern = /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])[A-Za-z\d]{8,16}/
  password.match?(pattern)
end
  
puts valid_password?("Passw0rd")
puts valid_password?("pass")

# activity 3
# find all numeric values in a string
def find_numbers(text)
  pattern = /\d+\D{1}\d+/
  text.scan(pattern)
end

puts find_numbers("The order was placed for 100.25 units at a price of 20.75 each.")


# activity 4
# match dates in the format YYYY-MM-DD.
def valid_date?(date)
  pattern = /\d{4}-\d{2}-\d{2}/
  date.match?(pattern)
end

puts valid_date?("2023-03-15")
puts valid_date?("15-03-2023")

# activity 5
# match log entries beginning with a severity level
# (INFO, WARN, or ERROR), followed by a message
def parse_log_entry(log)
  pattern = /([A-Z]+.)(.*\b)/
  match = log.match(pattern)
  [match[1], match[2]] if match
end

log_entry = "ERROR: Disk space low"
puts parse_log_entry(log_entry).inspect

