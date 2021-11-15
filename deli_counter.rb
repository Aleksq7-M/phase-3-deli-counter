# Write your code here.
require 'pry'

katz_deli = []

def line  (current_line)
    if current_line == []
        puts "The line is currently empty."
    else
        line_status = current_line.map.with_index {|person, index| "#{index + 1}. #{person}"}
        puts "The line is currently: #{line_status.join(' ')}"
    end
end

def take_a_number (current_line, name)
    current_line.push(name)
    puts "Welcome, #{name}. You are number #{current_line.length} in line."
end

def now_serving (current_line)
    if current_line == []
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{current_line[0]}."
        current_line.shift
    end
end

binding.pry
0
