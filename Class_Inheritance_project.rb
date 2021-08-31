class Employee

    attr_reader :name, :title, :salary, :boss

    def initialize(name, title, salary, boss)
        @name = name
        @title = title
        @salary = salary
        @boss = boss
    end
    
    def bonus(multiplier)
        bonus = (self.salary) * multiplier
    end

end

class Manager < Employee

    attr_reader :employees

    def initialize(name, title, salary, boss, *employees)
        @employee = employees

        super(name, title, salary, boss)
    end

    # def add_employee(employee)
    #     @employees << employee
    # end

    def bonus(multiplier)
        sum = 0
        self.employees.each { |employee| sum += employee.salary }
        bonus = sum * multiplier
    end

end