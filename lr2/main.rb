require './department.rb'

def read_from_txt(path)
    arr = Array.new
    File.open("#{path}").each do |dep| 
        name, phone_number = dep.chomp.split(",")
        arr.append(Department.new(name, phone_number))
    end
    arr
end

def print_arr(arr)
    arr.each do |obj|
        puts obj
    end
end

p print_arr(read_from_txt("deps.txt"))

