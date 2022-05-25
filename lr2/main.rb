require './department.rb'

def read_from_txt(path)
    arr = Array.new
    File.open("#{path}").each do |dep| 
        name, phone = dep.chomp.split(",")
        arr.append(Department.new(name, phone))
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

# arr = []
# arr.append(Department.new("Отдел маркетинга","89005002020"))
# write_to_txt("deps.txt",arr)
# # arr = read_from_txt("deps.txt")
# # print_arr(arr)