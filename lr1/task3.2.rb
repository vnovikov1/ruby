def min(arr)
    min = arr[0]
    for item in arr
        if item < min
            min = item
        end
    end 
    return min
end

def max(arr)
    max = arr[0]
    for item in arr
        if item > max
            max = item
        end
    end 
    return max
end

def sum(arr)
    sum = 0
    for item in arr
        sum += item
    end
    return sum
end

def composition(arr)
    pr = 1
    for item in arr
        pr *= item
    end
    return pr
end

def input(amount)
    amount = amount.to_i
    arr = Array.new

    for item in 1..amount
        item = STDIN.gets.chomp
        arr.push(item)
    end

    return arr.map(&:to_i)
end

def iff(path)
    file = File.new(path, "r:UTF-8")
    content = file.read
    return content.split.map(&:to_i)
end

def h()
    return "1 аргумент - выполняемый метод.
2 аргумент - выбор ввода списка.
3 аргумент - путь к файлу(если 2 агрумент - 1) или количечество элементов списка(если 2 аругмент - 2).

Доступные методы:
1 - Минимум
2 - Максимум
3 - Сумма
4 - Произведение"
end

def select_input()        
    if ARGV[1] == '1'
        begin
            return iff(ARGV[2])
        rescue
            puts "Путь к файлу не введен или некорректен"
            puts
            return h
        end

    elsif ARGV[1] == '2'
        if ARGV[2][/^\d+$/]
            puts "Введите #{ARGV[2]} элементов: "
            return input(ARGV[2])
        else
            puts "Третий аргумент не введен или не является целым числом"
            puts
            return h
        end
    end
end

def main()
    if ARGV.empty? or ARGV.include?('-h') or ARGV.size != 3
        puts h()
        return
    end
    
    case ARGV[0]
    when '1'
        puts "Минимальный элемент - #{min(select_input())}"
    when '2'
        puts "Максимальный элемент - #{max(select_input())}"
    when '3'
        puts "Сумма элементов - #{sum(select_input())}"
    when '4'
        puts "Произведение элементов - #{composition(select_input())}"
    end
end

main()
#path = txt3.txt