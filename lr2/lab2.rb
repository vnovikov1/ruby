class Department
    attr_accessor :name, :phone
    def initialize(name, phone)
        @name = name
        @phone = phone
    end
end

dep_marketing = Department.new("Отдел маркетинга","89005002020")
dep_it = Department.new("IT-отдел","89002009243")
p "Подразделение - #{dep_marketing.name}, номер - #{dep_marketing.phone}"
p "Подразделение - #{dep_it.name}, номер - #{dep_it.phone}"