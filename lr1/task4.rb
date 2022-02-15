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

def is_min?(arr, i)
    return arr.min == arr[i]
end

def swap(arr)
    arr[arr.index(arr.max)], arr[arr.index(arr.min)] = arr[arr.index(arr.min)], arr[arr.index(arr.max)]
    return arr
end

def max_here?(arr, a, b)
    return arr[a..b].include?(arr.max)
end

def main()
    puts "Выберите задачу: 
1. - Проверка минимума
2. - Свап максимального и минимального элементов
3. - Проверка максимального в промежутке a..b"

    task = gets.chomp
    case task
    when '1'
        puts "Индекс проверяемого элемента?"
        idx = gets.chomp.to_i
        puts is_min?(select_input(), idx)
    when '2'
        print swap(select_input())
    when '3'
        print "Введите (a, b) через пробел: "
        a, b = gets.chomp.split.map(&:to_i)
        puts max_here?(select_input(), a, b)
    end
end

main()