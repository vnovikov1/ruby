require './department.rb'

def read_from_txt(path)
    arr = Array.new
    File.open("#{path}").each do |dep| 
        name, phone_number = dep.chomp.split(",")
        arr.append(Department.new(name, phone_number))
    end
    arr
end

