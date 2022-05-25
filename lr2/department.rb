class Department
    attr_accessor :name, :phone

    def initialize(name, phone, selected_duty = nil)
        self.name= name
        self.phone= Department.correct_phone_number(phone)
        @duties = []
        @selected_duty = selected_duty
    end

    def to_s
        if !@duties.empty?
            duty = @duties.join(', ')
            return "Подразделение - #{self.name}, телефон - #{self.phone}, Обязанности: #{duty}"
        end
        return "Подразделение - #{self.name}, телефон - #{self.phone}"
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

    def self.valid_phone?(phone)
        if (/^((\+7|7|8)+([0-9]){10})$/).match(phone) == nil
            return false
        end
        true
    end

    def self.correct_phone_number(phone)
        if self.valid_phone?(phone)
            nums = phone.chars.map{|symb| symb if symb =~ /[0-9]/}.join
            return "7-" + nums[1..3] + "-" + nums[4..]
        else
            raise ArgumentError ,"Invalid phone number."
        end
    end
end