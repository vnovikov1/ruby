def input
    return gets.chomp.split().map(&:to_i)
end

def iff(path)
    file = File.new(path, "r:UTF-8")
    arr = file.read
    return arr.split.map(&:to_i)
end

def select_input()
    puts "Выберите способа задания массива"
    puts "1. - С клавиатуры"
    puts "2. - С файла"

    way = gets.chomp

    if way == "1"
        print "Введите элементы через пробел: "
        arr = input()
        return arr

    elsif way == "2"
        print "Введите путь до файла с массивом: "
        arr = iff(gets.chomp)
        return arr
    end
end