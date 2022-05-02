def min_number(str)
    return str.scan(%r"[0-9]*").uniq.delete_if{|x| x == ""}.map{|x| x.to_i}.min
end

def main
    p "Введите строку: "
    str = gets.chomp
    p min_number(str)
end

main()