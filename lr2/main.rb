require './department.rb'

def read_from_txt(path)
    arr = Array.new
    File.open("#{path}").each do |dep| 
        name, phone_number = dep.chomp.split(",")
        arr.append(Department.new(name, phone_number))
    end
    arr
end

def write_to_txt(path, arr)
    File.open("#{path}", "w") do |file|
        arr.each do |e|
            file.print e, ","
        end
        file.print "\n"
    end
end

def print_arr(arr)
    arr.each do |obj|
        puts obj
    end
end