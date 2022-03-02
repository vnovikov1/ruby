def rand_str(str)
    return str.split("").sort_by{rand}.join
end

def is_palindrome?(str)
    return str == str.reverse 
end

def main()
    p "Введите строку: "
    str = gets.chomp
    p rand_str(str)
    p is_palindrome?(str.scan((/[A-Z]/)))
end

main()