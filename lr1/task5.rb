def rand_str(str)
    return str.split("").sort_by{rand}.join
end

def main()
    p "Введите строку: "
    str = gets.chomp
    p rand_str(str)
end

main()