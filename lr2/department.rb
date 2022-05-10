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

    def valid_phone
        if (/^((\+7|7|8)+([0-9]){10})$/).match(phone) == nil
            return false
        end
        true
    end
end