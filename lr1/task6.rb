sentence = "sffff ada аа цуйц аааа dsda нннннqqqqffq "
def counter(sentence)
    results = []
    acc = 0
    sentence.each_char do |c|
        if c.ord >= 1040 && c.ord <= 1103
            acc += 1
        else
            results.append(acc)
            acc = 0
        end
    end
    results.max
end

puts counter(sentence)