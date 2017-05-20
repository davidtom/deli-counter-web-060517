# Write your code here.
def line?(array)
  return true if array.size >0
  false
end

def line(array)
  if !line?(array)
    puts "The line is currently empty."
  else
    line_string = "The line is currently: "
    array.each_with_index {|name, i|
      line_string += "#{i.to_i + 1}. #{name} "
    }
    puts line_string.chop
  end
end

def take_a_number(current_line, person)
  current_line.push(person)
  puts "Welcome, #{person}. You are number #{current_line.length} in line."
end

def now_serving(array)
  if !line?(array)
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{array.shift}."
  end
end
