class Student
    attr_accessor :name
    attr_reader :grade
    def initialize(name,grade)
        @name = name
        @grade = grade
    end
end

nombres = %w(Alicia Javier Camila Francisco Pablo Josefina)

arr_obj = []
nombres.each_with_index do |name, nota|
    nota += 1
    name = Student.new(name, nota)
    arr_obj << name
    
end

arr_notas = arr_obj.map {|objetos| objetos.grade}

print arr_notas





