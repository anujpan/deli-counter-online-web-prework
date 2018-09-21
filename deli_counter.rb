katz_deli = []

def line(katz_deli)
  if katz_deli.any? == false
    puts "The line is currently empty."
  else
    status = "The line is currently:"
    katz_deli.each_with_index do |name, index|
      status += " #{index + 1}. #{name}"
    end
    puts status
    status
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  puts "Welcome, #{name}. You are number #{katz_deli.index(name)+1} in line."
end

def ticket_number(katz_deli)
  current_number = 0
  
  status = current_number + 1
  
  katz_deli.push(status)

  total = katz_deli.length
  

  puts "Welcome, your ticket number is #{status} and you are number #{total} in line."
  
  status
end

ticket_number([2, 3, 4])

def now_serving(katz_deli)
  if katz_deli.any? == false
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{katz_deli.shift}."
  end  
end
