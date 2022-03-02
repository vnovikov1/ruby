def rand_str(str)
    return str.split("").sort_by{rand}.join
end

def is_palindrome?(str)
    return str == str.reverse 
end

def sort_by_number(str)
    return str.split.sort_by(&:size).join(' ')
end

def main()
    p "Введите строку: "
    str = gets.chomp
    p rand_str(str)
    p is_palindrome?(str.scan((/[A-Z]/)))
    p sort_by_number(str)
end

main()