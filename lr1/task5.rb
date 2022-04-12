def cyrillic
    if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__
      
        [STDIN, STDOUT].each do |io|
          io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
    end
end

def rand_str(str)
    return str.split("").sort_by{rand}.join
end

def is_palindrome?(str)
    return str == str.reverse 
end

def sort_by_number(str)
    return str.split.sort_by(&:size).join(' ')
end

def date(str)
    str.scan(/([0-2][0-9]|3[0-1]).(0[1-9]|1[0-2]|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря).([0-9]{4})/).map{|e| e.join(' ')}.join(" ")
end

def main()
    p "Введите строку: "
    str = gets.chomp
    p rand_str(str)
    p is_palindrome?(str.scan((/[A-Z]/)))
    p sort_by_number(str)
    p date(str)
end

cyrillic()
main()