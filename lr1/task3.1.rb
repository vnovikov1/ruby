print 'Введите список: '
arr = gets.chomp.split
arr = arr.map(&:to_i)
puts "Список элементов: #{arr}"

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

puts "Минимальный элемент: #{min(arr)}"
puts "Максимальный элемент: #{max(arr)}"
puts "Сумма элементов: #{sum(arr)}"
puts "Произведение элементов: #{composition(arr)}"