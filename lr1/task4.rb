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

def average(arr)
    sum = 0
    arr.map {|item| sum += item.abs}
    return (sum.to_f / arr.size)
end

def average_max_list(arr)
    sum = 0
    arr.map{|item| sum += item}
    average = sum.to_f / arr.size

    new_arr = []
    arr.map{|item| if item > average and item < arr.max then new_arr.push(item) end}
    return new_arr
end

def main()
    puts "Выберите задачу: 
1. - Проверка минимума
2. - Свап максимального и минимального элементов
3. - Проверка максимального в промежутке a..b
4. - Среднее арифметическое модулей элементов
5. - Новый список с элементами большими, чем ср.ариф. исходного массива, но меньшими максимума"

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
    when '4'
        puts "Среднее арифметическое: #{average(select_input())}"
    when '5'
        puts "Новый список: #{average_max_list(select_input())}"
    end
end

main()