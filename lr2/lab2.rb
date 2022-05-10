class Department
    attr_accessor :name, :phone

    def initialize(name, phone, selected_duty = nil)
        @name = name
        @phone = phone
        @duties = []
        @selected_duty = selected_duty
    end

    def to_s
        if !@duties.empty?
            duty = @duties.join(', ')
            return "Подразделение - #{@name}, телефон - #{@phone}, Обязанности: #{duty}"
        end
        return "Подразделение - #{@name}, телефон - #{@phone}"
    end

    def add_duty(duty)
        @duties.push(duty)
    end

    def select_duty(duty)
        @selected_duty = duty
    end

    def delete_duty
        @duties.delete_at(@selected_duty)
    end

    def get_content
        @duties[@selected_duty]
    end

    def change_content(other_duty)
        @duties[@selected_duty] = other_duty
    end

    def show_duties
        if @duties.empty?
          "В этом подразделении нет обязанностей."
        else
          "Обязанности в этом подразделении: #{@duties.join(", ")}"
        end
    end
end

dep_marketing = Department.new("Отдел маркетинга","89005002020")
dep_it = Department.new("IT-отдел","89002009243")

p dep_marketing.to_s
p dep_it.to_s

puts

dep_marketing.add_duty("Придумать рекламу")
dep_marketing.add_duty("Сходить за кофе")

dep_marketing.select_duty(1)
p dep_marketing.get_content

dep_marketing.change_content("Уйти домой")
puts 
p dep_marketing.get_content
puts 

p dep_marketing.show_duties

dep_marketing.delete_duty

p dep_marketing.to_s
p dep_it.to_s