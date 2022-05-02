def cyrillic
    if (Gem.win_platform?)
        Encoding.default_external = Encoding.find(Encoding.locale_charmap)
        Encoding.default_internal = __ENCODING__
      
        [STDIN, STDOUT].each do |io|
          io.set_encoding(Encoding.default_external, Encoding.default_internal)
        end
    end
end

def min_number(str)
    return str.scan(%r"[0-9]*").uniq.delete_if{|x| x == ""}.map{|x| x.to_i}.min
end

def cyrillic_counter(str)
    results = []
    acc = 0
    str.each_char do |c|
        if c.ord >= 1040 && c.ord <= 1103
            acc += 1
        else
            results.append(acc)
            acc = 0
        end
    end
    results.append(acc)
    results.max
end

def is_int?(obj)
    obj.to_s == obj.to_i.to_s
end

def number_counter(str)
    results = []
    acc = 0
    str.each_char do |c|
        if is_int?(c)
            acc += 1
        else
            results.append(acc)
            acc = 0
        end
    end
    results.append(acc)
    results.max
end

def main
    p "Введите строку: "
    str = gets.chomp
    p min_number(str)
    p cyrillic_counter(str)
    p number_counter(str)
end

cyrillic()
main()